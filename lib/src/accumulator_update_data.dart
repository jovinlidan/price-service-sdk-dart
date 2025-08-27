import 'dart:math' as math;
import 'dart:typed_data';

const String _kACCUMULATOR_MAGIC_HEX = '504e4155';
const int _kMAJOR_VERSION = 1;
const int _kMINOR_VERSION = 0;
const int _kKECCAK160_HASH_SIZE = 20;
const int _kPRICE_FEED_MESSAGE_VARIANT = 0;
const int _kTWAP_MESSAGE_VARIANT = 1;

class AccumulatorUpdateData {
  final Uint8List vaa;
  final List<AccumulatorUpdate> updates;
  const AccumulatorUpdateData({required this.vaa, required this.updates});
}

class AccumulatorUpdate {
  final Uint8List message;
  final List<List<int>> proof;
  const AccumulatorUpdate({required this.message, required this.proof});
}

class PriceFeedMessage {
  final Uint8List feedId;
  final BigInt price;
  final BigInt confidence;
  final int exponent;
  final BigInt publishTime;
  final BigInt prevPublishTime;
  final BigInt emaPrice;
  final BigInt emaConf;

  const PriceFeedMessage({
    required this.feedId,
    required this.price,
    required this.confidence,
    required this.exponent,
    required this.publishTime,
    required this.prevPublishTime,
    required this.emaPrice,
    required this.emaConf,
  });
}

class TwapMessage {
  final Uint8List feedId;
  final BigInt cumulativePrice;
  final BigInt cumulativeConf;
  final BigInt numDownSlots;
  final int exponent;
  final BigInt publishTime;
  final BigInt prevPublishTime;
  final BigInt publishSlot;

  const TwapMessage({
    required this.feedId,
    required this.cumulativePrice,
    required this.cumulativeConf,
    required this.numDownSlots,
    required this.exponent,
    required this.publishTime,
    required this.prevPublishTime,
    required this.publishSlot,
  });
}

bool isAccumulatorUpdateData(Uint8List updateBytes) {
  final magicOk = bytesToHex(updateBytes.sublist(0, 4)) == _kACCUMULATOR_MAGIC_HEX;
  final majorOk = updateBytes[4] == _kMAJOR_VERSION;
  final minorOk = updateBytes[5] == _kMINOR_VERSION;
  return magicOk && majorOk && minorOk;
}

PriceFeedMessage parsePriceFeedMessage(Uint8List message) {
  var cursor = 0;

  final variant = message[cursor];
  if (variant != _kPRICE_FEED_MESSAGE_VARIANT) {
    throw StateError('Not a price feed message');
  }
  cursor += 1;

  final feedId = Uint8List.fromList(message.sublist(cursor, cursor + 32));
  cursor += 32;

  final price = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final confidence = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final exponent = readInt32BE(message, cursor);
  cursor += 4;
  final publishTime = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final prevPublishTime = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final emaPrice = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final emaConf = readBigIntBE(message, cursor, 8);
  cursor += 8;

  return PriceFeedMessage(
    feedId: feedId,
    price: price,
    confidence: confidence,
    exponent: exponent,
    publishTime: publishTime,
    prevPublishTime: prevPublishTime,
    emaPrice: emaPrice,
    emaConf: emaConf,
  );
}

TwapMessage parseTwapMessage(Uint8List message) {
  var cursor = 0;

  final variant = message[cursor];
  if (variant != _kTWAP_MESSAGE_VARIANT) {
    throw StateError('Not a twap message');
  }
  cursor += 1;

  final feedId = Uint8List.fromList(message.sublist(cursor, cursor + 32));
  cursor += 32;

  final cumulativePrice = readBigIntBE(message, cursor, 16);
  cursor += 16;
  final cumulativeConf = readBigIntBE(message, cursor, 16);
  cursor += 16;
  final numDownSlots = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final exponent = readInt32BE(message, cursor);
  cursor += 4;
  final publishTime = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final prevPublishTime = readBigIntBE(message, cursor, 8);
  cursor += 8;
  final publishSlot = readBigIntBE(message, cursor, 8);
  cursor += 8;

  return TwapMessage(
    feedId: feedId,
    cumulativePrice: cumulativePrice,
    cumulativeConf: cumulativeConf,
    numDownSlots: numDownSlots,
    exponent: exponent,
    publishTime: publishTime,
    prevPublishTime: prevPublishTime,
    publishSlot: publishSlot,
  );
}

/// An AccumulatorUpdateData contains a VAA and a list of updates.
/// This function returns a new serialized AccumulatorUpdateData
/// with only the updates in the range [start, end).
Uint8List sliceAccumulatorUpdateData(Uint8List data, {int? start, int? end}) {
  if (start != null && end != null && start >= end) {
    end = start;
  }
  if (!isAccumulatorUpdateData(data)) {
    throw StateError('Invalid accumulator message');
  }

  var cursor = 6;
  final trailingPayloadSize = data[cursor];
  cursor += 1 + trailingPayloadSize;

  cursor += 1;

  final vaaSize = readUint16BE(data, cursor);
  cursor += 2;

  cursor += vaaSize;
  final endOfVaa = cursor;

  final updates = <Uint8List>[];

  final numUpdates = data[cursor];
  cursor += 1;

  for (var i = 0; i < numUpdates; i++) {
    final updateStart = cursor;

    final messageSize = readUint16BE(data, cursor);
    cursor += 2 + messageSize;

    final numProofs = data[cursor];
    cursor += 1 + _kKECCAK160_HASH_SIZE * numProofs;

    updates.add(Uint8List.fromList(data.sublist(updateStart, cursor)));
  }

  if (cursor != data.length) {
    throw StateError("Didn't reach the end of the message");
  }

  final s = start ?? 0;
  final e = math.min(end ?? updates.length, updates.length);

  final slice = updates.sublist(s, e);

  final concat = BytesBuilder();
  concat.add(data.sublist(0, endOfVaa));
  concat.add(Uint8List.fromList([slice.length]));
  for (final u in slice) {
    concat.add(u);
  }
  return concat.toBytes();
}

AccumulatorUpdateData parseAccumulatorUpdateData(Uint8List data) {
  if (!isAccumulatorUpdateData(data)) {
    throw StateError('Invalid accumulator message');
  }

  var cursor = 6;
  final trailingPayloadSize = data[cursor];
  cursor += 1 + trailingPayloadSize;

  cursor += 1;

  final vaaSize = readUint16BE(data, cursor);
  cursor += 2;

  final vaa = Uint8List.fromList(data.sublist(cursor, cursor + vaaSize));
  cursor += vaaSize;

  final numUpdates = data[cursor];
  cursor += 1;

  final updates = <AccumulatorUpdate>[];
  for (var i = 0; i < numUpdates; i++) {
    final messageSize = readUint16BE(data, cursor);
    cursor += 2;

    final message = Uint8List.fromList(data.sublist(cursor, cursor + messageSize));
    cursor += messageSize;

    final numProofs = data[cursor];
    cursor += 1;

    final proof = <List<int>>[];
    for (var j = 0; j < numProofs; j++) {
      final chunk = data.sublist(cursor, cursor + _kKECCAK160_HASH_SIZE);
      cursor += _kKECCAK160_HASH_SIZE;
      proof.add(List<int>.from(chunk));
    }

    updates.add(AccumulatorUpdate(message: message, proof: proof));
  }

  if (cursor != data.length) {
    throw StateError("Didn't reach the end of the message");
  }

  return AccumulatorUpdateData(vaa: vaa, updates: updates);
}

int readInt32BE(Uint8List bytes, int offset) {
  final bd = ByteData.sublistView(bytes, offset, offset + 4);
  return bd.getInt32(0, Endian.big);
}

int readUint16BE(Uint8List bytes, int offset) {
  final bd = ByteData.sublistView(bytes, offset, offset + 2);
  return bd.getUint16(0, Endian.big);
}

BigInt readBigIntBE(Uint8List bytes, int offset, int length) {
  final slice = bytes.sublist(offset, offset + length);
  BigInt result = BigInt.zero;
  for (final b in slice) {
    result = (result << 8) | BigInt.from(b);
  }
  return result;
}

String bytesToHex(Uint8List bytes) {
  final sb = StringBuffer();
  for (final b in bytes) {
    sb.write(b.toRadixString(16).padLeft(2, '0'));
  }
  return sb.toString();
}

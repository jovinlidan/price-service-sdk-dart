import 'dart:math' as math;
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.freezed.dart';
part 'price.g.dart';

@freezed
abstract class Price with _$Price {
  const Price._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Price({
    required String conf,
    required int expo,
    required String price,
    required int publishTime,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  /// Get price as number. Warning: this conversion might result in an inaccurate number.
  /// We store price and confidence values in our Oracle at 64-bit precision, but the Dart
  /// double type can only represent numbers with 52-bit precision. So if a price or confidence
  /// is larger than 52-bits, the conversion will lose the most insignificant bits.
  ///
  /// Prefer using `priceAsDecimal` or `confAsDecimal` instead, which will not lose precision.
  double getPriceAsNumberUnchecked() => double.parse(price) * math.pow(10, expo);

  /// Get price as double. Warning: this conversion might result in an inaccurate number.
  /// Explanation is the same as `priceAsNumberUnchecked()` documentation.
  ///
  /// Prefer using `priceAsDecimal` or `confAsDecimal` instead, which will not lose precision.
  double getConfAsNumberUnchecked() => double.parse(conf) * math.pow(10, expo);

  Decimal get priceAsDecimal => Decimal.parse(price) * (Decimal.fromInt(10).pow(expo).toDecimal());

  Decimal get confAsDecimal => Decimal.parse(conf) * (Decimal.fromInt(10).pow(expo).toDecimal());
}

@freezed
abstract class PriceFeed with _$PriceFeed {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PriceFeed({
    required Price emaPrice,
    required String id,
    PriceFeedMetadata? metadata,
    required Price price,
    String? vaa,
  }) = _PriceFeed;

  factory PriceFeed.fromJson(Map<String, dynamic> json) => _$PriceFeedFromJson(json);

  const PriceFeed._();

  Price getPriceUnchecked() => price;

  Price getEmaPriceUnchecked() => emaPrice;

  Price? getPriceNoOlderThan(int age) {
    final currentTime = (DateTime.now().millisecondsSinceEpoch / 1000).floor();
    return (currentTime - price.publishTime).abs() > age ? null : price;
  }

  Price? getEmaPriceNoOlderThan(int age) {
    final currentTime = (DateTime.now().millisecondsSinceEpoch / 1000).floor();
    return (currentTime - emaPrice.publishTime).abs() > age ? null : emaPrice;
  }

  PriceFeedMetadata? getMetadata() => metadata;
  String? getVAA() => vaa;
}

@freezed
abstract class PriceFeedMetadata with _$PriceFeedMetadata {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PriceFeedMetadata({
    int? attestationTime,
    required int emitterChain,
    int? prevPublishTime,
    int? priceServiceReceiveTime,
    int? sequenceNumber,
    int? slot,
  }) = _PriceFeedMetadata;

  factory PriceFeedMetadata.fromJson(Map<String, dynamic> json) =>
      _$PriceFeedMetadataFromJson(json);
}

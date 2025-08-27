import 'package:test/test.dart';
import 'package:price_service_sdk/src/price.dart';

void main() {
  group('PriceFeed', () {
    final publishTime = (DateTime.now().millisecondsSinceEpoch / 1000).floor() - 10;
    test('Parsing Price Feed works as expected', () {
      final data = {
        'ema_price': {'conf': '2', 'expo': 4, 'price': '3', 'publish_time': publishTime},
        'id': 'abcdef0123456789',
        'metadata': null,
        'price': {'conf': '1', 'expo': 4, 'price': '10', 'publish_time': publishTime},
        'vaa': null,
      };

      final priceFeed = PriceFeed.fromJson(data);
      expect(priceFeed.id, equals('abcdef0123456789'));

      final expectedPrice = Price(conf: '1', expo: 4, price: '10', publishTime: publishTime);
      expect(priceFeed.getPriceUnchecked(), equals(expectedPrice));

      final expectedEmaPrice = Price(conf: '2', expo: 4, price: '3', publishTime: publishTime);
      expect(priceFeed.getEmaPriceUnchecked(), equals(expectedEmaPrice));

      expect(priceFeed.getPriceNoOlderThan(15), equals(expectedPrice));
      expect(priceFeed.getPriceNoOlderThan(5), isNull);
      expect(priceFeed.getEmaPriceNoOlderThan(15), equals(expectedEmaPrice));
      expect(priceFeed.getEmaPriceNoOlderThan(5), isNull);

      expect(priceFeed.toJson(), equals(data));
    });

    test('getMetadata returns PriceFeedMetadata as expected', () {
      final data = {
        'ema_price': {'conf': '2', 'expo': 4, 'price': '3', 'publish_time': 11},
        'id': 'abcdef0123456789',
        'price': {'conf': '1', 'expo': 4, 'price': '10', 'publish_time': 11},
        'metadata': {
          'attestation_time': 7,
          'emitter_chain': 8,
          'price_service_receive_time': 9,
          'sequence_number': 10,
          'something_else': 11, // ignored
        },
      };

      final priceFeed = PriceFeed.fromJson(data);

      expect(
        priceFeed.getMetadata(),
        equals(
          PriceFeedMetadata.fromJson({
            'attestation_time': 7,
            'emitter_chain': 8,
            'price_service_receive_time': 9,
            'sequence_number': 10,
          }),
        ),
      );
    });

    test('getVAA returns string as expected', () {
      final data = {
        'ema_price': {'conf': '2', 'expo': 4, 'price': '3', 'publish_time': 11},
        'id': 'abcdef0123456789',
        'price': {'conf': '1', 'expo': 4, 'price': '10', 'publish_time': 11},
        'vaa': 'abcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdef',
      };

      final priceFeed = PriceFeed.fromJson(data);

      expect(
        priceFeed.getVAA(),
        equals('abcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdefabcdef'),
      );
    });
  });
}

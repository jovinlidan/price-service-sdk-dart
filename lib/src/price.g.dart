// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Price _$PriceFromJson(Map<String, dynamic> json) => _Price(
  conf: json['conf'] as String,
  expo: (json['expo'] as num).toInt(),
  price: json['price'] as String,
  publishTime: (json['publish_time'] as num).toInt(),
);

Map<String, dynamic> _$PriceToJson(_Price instance) => <String, dynamic>{
  'conf': instance.conf,
  'expo': instance.expo,
  'price': instance.price,
  'publish_time': instance.publishTime,
};

_PriceFeed _$PriceFeedFromJson(Map<String, dynamic> json) => _PriceFeed(
  emaPrice: Price.fromJson(json['ema_price'] as Map<String, dynamic>),
  id: json['id'] as String,
  metadata: json['metadata'] == null
      ? null
      : PriceFeedMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  price: Price.fromJson(json['price'] as Map<String, dynamic>),
  vaa: json['vaa'] as String?,
);

Map<String, dynamic> _$PriceFeedToJson(_PriceFeed instance) =>
    <String, dynamic>{
      'ema_price': instance.emaPrice.toJson(),
      'id': instance.id,
      'metadata': instance.metadata?.toJson(),
      'price': instance.price.toJson(),
      'vaa': instance.vaa,
    };

_PriceFeedMetadata _$PriceFeedMetadataFromJson(Map<String, dynamic> json) =>
    _PriceFeedMetadata(
      attestationTime: (json['attestation_time'] as num?)?.toInt(),
      emitterChain: (json['emitter_chain'] as num).toInt(),
      prevPublishTime: (json['prev_publish_time'] as num?)?.toInt(),
      priceServiceReceiveTime: (json['price_service_receive_time'] as num?)
          ?.toInt(),
      sequenceNumber: (json['sequence_number'] as num?)?.toInt(),
      slot: (json['slot'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PriceFeedMetadataToJson(_PriceFeedMetadata instance) =>
    <String, dynamic>{
      'attestation_time': instance.attestationTime,
      'emitter_chain': instance.emitterChain,
      'prev_publish_time': instance.prevPublishTime,
      'price_service_receive_time': instance.priceServiceReceiveTime,
      'sequence_number': instance.sequenceNumber,
      'slot': instance.slot,
    };

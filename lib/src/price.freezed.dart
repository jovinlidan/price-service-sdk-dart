// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Price {

 String get conf; int get expo; String get price; int get publishTime;
/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceCopyWith<Price> get copyWith => _$PriceCopyWithImpl<Price>(this as Price, _$identity);

  /// Serializes this Price to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Price&&(identical(other.conf, conf) || other.conf == conf)&&(identical(other.expo, expo) || other.expo == expo)&&(identical(other.price, price) || other.price == price)&&(identical(other.publishTime, publishTime) || other.publishTime == publishTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conf,expo,price,publishTime);

@override
String toString() {
  return 'Price(conf: $conf, expo: $expo, price: $price, publishTime: $publishTime)';
}


}

/// @nodoc
abstract mixin class $PriceCopyWith<$Res>  {
  factory $PriceCopyWith(Price value, $Res Function(Price) _then) = _$PriceCopyWithImpl;
@useResult
$Res call({
 String conf, int expo, String price, int publishTime
});




}
/// @nodoc
class _$PriceCopyWithImpl<$Res>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._self, this._then);

  final Price _self;
  final $Res Function(Price) _then;

/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conf = null,Object? expo = null,Object? price = null,Object? publishTime = null,}) {
  return _then(_self.copyWith(
conf: null == conf ? _self.conf : conf // ignore: cast_nullable_to_non_nullable
as String,expo: null == expo ? _self.expo : expo // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,publishTime: null == publishTime ? _self.publishTime : publishTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Price].
extension PricePatterns on Price {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Price value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Price() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Price value)  $default,){
final _that = this;
switch (_that) {
case _Price():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Price value)?  $default,){
final _that = this;
switch (_that) {
case _Price() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String conf,  int expo,  String price,  int publishTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Price() when $default != null:
return $default(_that.conf,_that.expo,_that.price,_that.publishTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String conf,  int expo,  String price,  int publishTime)  $default,) {final _that = this;
switch (_that) {
case _Price():
return $default(_that.conf,_that.expo,_that.price,_that.publishTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String conf,  int expo,  String price,  int publishTime)?  $default,) {final _that = this;
switch (_that) {
case _Price() when $default != null:
return $default(_that.conf,_that.expo,_that.price,_that.publishTime);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Price extends Price {
  const _Price({required this.conf, required this.expo, required this.price, required this.publishTime}): super._();
  factory _Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

@override final  String conf;
@override final  int expo;
@override final  String price;
@override final  int publishTime;

/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceCopyWith<_Price> get copyWith => __$PriceCopyWithImpl<_Price>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Price&&(identical(other.conf, conf) || other.conf == conf)&&(identical(other.expo, expo) || other.expo == expo)&&(identical(other.price, price) || other.price == price)&&(identical(other.publishTime, publishTime) || other.publishTime == publishTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conf,expo,price,publishTime);

@override
String toString() {
  return 'Price(conf: $conf, expo: $expo, price: $price, publishTime: $publishTime)';
}


}

/// @nodoc
abstract mixin class _$PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$PriceCopyWith(_Price value, $Res Function(_Price) _then) = __$PriceCopyWithImpl;
@override @useResult
$Res call({
 String conf, int expo, String price, int publishTime
});




}
/// @nodoc
class __$PriceCopyWithImpl<$Res>
    implements _$PriceCopyWith<$Res> {
  __$PriceCopyWithImpl(this._self, this._then);

  final _Price _self;
  final $Res Function(_Price) _then;

/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conf = null,Object? expo = null,Object? price = null,Object? publishTime = null,}) {
  return _then(_Price(
conf: null == conf ? _self.conf : conf // ignore: cast_nullable_to_non_nullable
as String,expo: null == expo ? _self.expo : expo // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,publishTime: null == publishTime ? _self.publishTime : publishTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PriceFeed {

 Price get emaPrice; String get id; PriceFeedMetadata? get metadata; Price get price; String? get vaa;
/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceFeedCopyWith<PriceFeed> get copyWith => _$PriceFeedCopyWithImpl<PriceFeed>(this as PriceFeed, _$identity);

  /// Serializes this PriceFeed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceFeed&&(identical(other.emaPrice, emaPrice) || other.emaPrice == emaPrice)&&(identical(other.id, id) || other.id == id)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.price, price) || other.price == price)&&(identical(other.vaa, vaa) || other.vaa == vaa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emaPrice,id,metadata,price,vaa);

@override
String toString() {
  return 'PriceFeed(emaPrice: $emaPrice, id: $id, metadata: $metadata, price: $price, vaa: $vaa)';
}


}

/// @nodoc
abstract mixin class $PriceFeedCopyWith<$Res>  {
  factory $PriceFeedCopyWith(PriceFeed value, $Res Function(PriceFeed) _then) = _$PriceFeedCopyWithImpl;
@useResult
$Res call({
 Price emaPrice, String id, PriceFeedMetadata? metadata, Price price, String? vaa
});


$PriceCopyWith<$Res> get emaPrice;$PriceFeedMetadataCopyWith<$Res>? get metadata;$PriceCopyWith<$Res> get price;

}
/// @nodoc
class _$PriceFeedCopyWithImpl<$Res>
    implements $PriceFeedCopyWith<$Res> {
  _$PriceFeedCopyWithImpl(this._self, this._then);

  final PriceFeed _self;
  final $Res Function(PriceFeed) _then;

/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emaPrice = null,Object? id = null,Object? metadata = freezed,Object? price = null,Object? vaa = freezed,}) {
  return _then(_self.copyWith(
emaPrice: null == emaPrice ? _self.emaPrice : emaPrice // ignore: cast_nullable_to_non_nullable
as Price,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as PriceFeedMetadata?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,vaa: freezed == vaa ? _self.vaa : vaa // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get emaPrice {
  
  return $PriceCopyWith<$Res>(_self.emaPrice, (value) {
    return _then(_self.copyWith(emaPrice: value));
  });
}/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceFeedMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $PriceFeedMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceFeed].
extension PriceFeedPatterns on PriceFeed {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceFeed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceFeed() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceFeed value)  $default,){
final _that = this;
switch (_that) {
case _PriceFeed():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceFeed value)?  $default,){
final _that = this;
switch (_that) {
case _PriceFeed() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Price emaPrice,  String id,  PriceFeedMetadata? metadata,  Price price,  String? vaa)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceFeed() when $default != null:
return $default(_that.emaPrice,_that.id,_that.metadata,_that.price,_that.vaa);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Price emaPrice,  String id,  PriceFeedMetadata? metadata,  Price price,  String? vaa)  $default,) {final _that = this;
switch (_that) {
case _PriceFeed():
return $default(_that.emaPrice,_that.id,_that.metadata,_that.price,_that.vaa);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Price emaPrice,  String id,  PriceFeedMetadata? metadata,  Price price,  String? vaa)?  $default,) {final _that = this;
switch (_that) {
case _PriceFeed() when $default != null:
return $default(_that.emaPrice,_that.id,_that.metadata,_that.price,_that.vaa);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PriceFeed extends PriceFeed {
  const _PriceFeed({required this.emaPrice, required this.id, this.metadata, required this.price, this.vaa}): super._();
  factory _PriceFeed.fromJson(Map<String, dynamic> json) => _$PriceFeedFromJson(json);

@override final  Price emaPrice;
@override final  String id;
@override final  PriceFeedMetadata? metadata;
@override final  Price price;
@override final  String? vaa;

/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceFeedCopyWith<_PriceFeed> get copyWith => __$PriceFeedCopyWithImpl<_PriceFeed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceFeedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceFeed&&(identical(other.emaPrice, emaPrice) || other.emaPrice == emaPrice)&&(identical(other.id, id) || other.id == id)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.price, price) || other.price == price)&&(identical(other.vaa, vaa) || other.vaa == vaa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emaPrice,id,metadata,price,vaa);

@override
String toString() {
  return 'PriceFeed(emaPrice: $emaPrice, id: $id, metadata: $metadata, price: $price, vaa: $vaa)';
}


}

/// @nodoc
abstract mixin class _$PriceFeedCopyWith<$Res> implements $PriceFeedCopyWith<$Res> {
  factory _$PriceFeedCopyWith(_PriceFeed value, $Res Function(_PriceFeed) _then) = __$PriceFeedCopyWithImpl;
@override @useResult
$Res call({
 Price emaPrice, String id, PriceFeedMetadata? metadata, Price price, String? vaa
});


@override $PriceCopyWith<$Res> get emaPrice;@override $PriceFeedMetadataCopyWith<$Res>? get metadata;@override $PriceCopyWith<$Res> get price;

}
/// @nodoc
class __$PriceFeedCopyWithImpl<$Res>
    implements _$PriceFeedCopyWith<$Res> {
  __$PriceFeedCopyWithImpl(this._self, this._then);

  final _PriceFeed _self;
  final $Res Function(_PriceFeed) _then;

/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emaPrice = null,Object? id = null,Object? metadata = freezed,Object? price = null,Object? vaa = freezed,}) {
  return _then(_PriceFeed(
emaPrice: null == emaPrice ? _self.emaPrice : emaPrice // ignore: cast_nullable_to_non_nullable
as Price,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as PriceFeedMetadata?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,vaa: freezed == vaa ? _self.vaa : vaa // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get emaPrice {
  
  return $PriceCopyWith<$Res>(_self.emaPrice, (value) {
    return _then(_self.copyWith(emaPrice: value));
  });
}/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceFeedMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $PriceFeedMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}/// Create a copy of PriceFeed
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// @nodoc
mixin _$PriceFeedMetadata {

 int? get attestationTime; int get emitterChain; int? get prevPublishTime; int? get priceServiceReceiveTime; int? get sequenceNumber; int? get slot;
/// Create a copy of PriceFeedMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceFeedMetadataCopyWith<PriceFeedMetadata> get copyWith => _$PriceFeedMetadataCopyWithImpl<PriceFeedMetadata>(this as PriceFeedMetadata, _$identity);

  /// Serializes this PriceFeedMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceFeedMetadata&&(identical(other.attestationTime, attestationTime) || other.attestationTime == attestationTime)&&(identical(other.emitterChain, emitterChain) || other.emitterChain == emitterChain)&&(identical(other.prevPublishTime, prevPublishTime) || other.prevPublishTime == prevPublishTime)&&(identical(other.priceServiceReceiveTime, priceServiceReceiveTime) || other.priceServiceReceiveTime == priceServiceReceiveTime)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attestationTime,emitterChain,prevPublishTime,priceServiceReceiveTime,sequenceNumber,slot);

@override
String toString() {
  return 'PriceFeedMetadata(attestationTime: $attestationTime, emitterChain: $emitterChain, prevPublishTime: $prevPublishTime, priceServiceReceiveTime: $priceServiceReceiveTime, sequenceNumber: $sequenceNumber, slot: $slot)';
}


}

/// @nodoc
abstract mixin class $PriceFeedMetadataCopyWith<$Res>  {
  factory $PriceFeedMetadataCopyWith(PriceFeedMetadata value, $Res Function(PriceFeedMetadata) _then) = _$PriceFeedMetadataCopyWithImpl;
@useResult
$Res call({
 int? attestationTime, int emitterChain, int? prevPublishTime, int? priceServiceReceiveTime, int? sequenceNumber, int? slot
});




}
/// @nodoc
class _$PriceFeedMetadataCopyWithImpl<$Res>
    implements $PriceFeedMetadataCopyWith<$Res> {
  _$PriceFeedMetadataCopyWithImpl(this._self, this._then);

  final PriceFeedMetadata _self;
  final $Res Function(PriceFeedMetadata) _then;

/// Create a copy of PriceFeedMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attestationTime = freezed,Object? emitterChain = null,Object? prevPublishTime = freezed,Object? priceServiceReceiveTime = freezed,Object? sequenceNumber = freezed,Object? slot = freezed,}) {
  return _then(_self.copyWith(
attestationTime: freezed == attestationTime ? _self.attestationTime : attestationTime // ignore: cast_nullable_to_non_nullable
as int?,emitterChain: null == emitterChain ? _self.emitterChain : emitterChain // ignore: cast_nullable_to_non_nullable
as int,prevPublishTime: freezed == prevPublishTime ? _self.prevPublishTime : prevPublishTime // ignore: cast_nullable_to_non_nullable
as int?,priceServiceReceiveTime: freezed == priceServiceReceiveTime ? _self.priceServiceReceiveTime : priceServiceReceiveTime // ignore: cast_nullable_to_non_nullable
as int?,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int?,slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceFeedMetadata].
extension PriceFeedMetadataPatterns on PriceFeedMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceFeedMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceFeedMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceFeedMetadata value)  $default,){
final _that = this;
switch (_that) {
case _PriceFeedMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceFeedMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _PriceFeedMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? attestationTime,  int emitterChain,  int? prevPublishTime,  int? priceServiceReceiveTime,  int? sequenceNumber,  int? slot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceFeedMetadata() when $default != null:
return $default(_that.attestationTime,_that.emitterChain,_that.prevPublishTime,_that.priceServiceReceiveTime,_that.sequenceNumber,_that.slot);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? attestationTime,  int emitterChain,  int? prevPublishTime,  int? priceServiceReceiveTime,  int? sequenceNumber,  int? slot)  $default,) {final _that = this;
switch (_that) {
case _PriceFeedMetadata():
return $default(_that.attestationTime,_that.emitterChain,_that.prevPublishTime,_that.priceServiceReceiveTime,_that.sequenceNumber,_that.slot);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? attestationTime,  int emitterChain,  int? prevPublishTime,  int? priceServiceReceiveTime,  int? sequenceNumber,  int? slot)?  $default,) {final _that = this;
switch (_that) {
case _PriceFeedMetadata() when $default != null:
return $default(_that.attestationTime,_that.emitterChain,_that.prevPublishTime,_that.priceServiceReceiveTime,_that.sequenceNumber,_that.slot);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PriceFeedMetadata implements PriceFeedMetadata {
  const _PriceFeedMetadata({this.attestationTime, required this.emitterChain, this.prevPublishTime, this.priceServiceReceiveTime, this.sequenceNumber, this.slot});
  factory _PriceFeedMetadata.fromJson(Map<String, dynamic> json) => _$PriceFeedMetadataFromJson(json);

@override final  int? attestationTime;
@override final  int emitterChain;
@override final  int? prevPublishTime;
@override final  int? priceServiceReceiveTime;
@override final  int? sequenceNumber;
@override final  int? slot;

/// Create a copy of PriceFeedMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceFeedMetadataCopyWith<_PriceFeedMetadata> get copyWith => __$PriceFeedMetadataCopyWithImpl<_PriceFeedMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceFeedMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceFeedMetadata&&(identical(other.attestationTime, attestationTime) || other.attestationTime == attestationTime)&&(identical(other.emitterChain, emitterChain) || other.emitterChain == emitterChain)&&(identical(other.prevPublishTime, prevPublishTime) || other.prevPublishTime == prevPublishTime)&&(identical(other.priceServiceReceiveTime, priceServiceReceiveTime) || other.priceServiceReceiveTime == priceServiceReceiveTime)&&(identical(other.sequenceNumber, sequenceNumber) || other.sequenceNumber == sequenceNumber)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attestationTime,emitterChain,prevPublishTime,priceServiceReceiveTime,sequenceNumber,slot);

@override
String toString() {
  return 'PriceFeedMetadata(attestationTime: $attestationTime, emitterChain: $emitterChain, prevPublishTime: $prevPublishTime, priceServiceReceiveTime: $priceServiceReceiveTime, sequenceNumber: $sequenceNumber, slot: $slot)';
}


}

/// @nodoc
abstract mixin class _$PriceFeedMetadataCopyWith<$Res> implements $PriceFeedMetadataCopyWith<$Res> {
  factory _$PriceFeedMetadataCopyWith(_PriceFeedMetadata value, $Res Function(_PriceFeedMetadata) _then) = __$PriceFeedMetadataCopyWithImpl;
@override @useResult
$Res call({
 int? attestationTime, int emitterChain, int? prevPublishTime, int? priceServiceReceiveTime, int? sequenceNumber, int? slot
});




}
/// @nodoc
class __$PriceFeedMetadataCopyWithImpl<$Res>
    implements _$PriceFeedMetadataCopyWith<$Res> {
  __$PriceFeedMetadataCopyWithImpl(this._self, this._then);

  final _PriceFeedMetadata _self;
  final $Res Function(_PriceFeedMetadata) _then;

/// Create a copy of PriceFeedMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attestationTime = freezed,Object? emitterChain = null,Object? prevPublishTime = freezed,Object? priceServiceReceiveTime = freezed,Object? sequenceNumber = freezed,Object? slot = freezed,}) {
  return _then(_PriceFeedMetadata(
attestationTime: freezed == attestationTime ? _self.attestationTime : attestationTime // ignore: cast_nullable_to_non_nullable
as int?,emitterChain: null == emitterChain ? _self.emitterChain : emitterChain // ignore: cast_nullable_to_non_nullable
as int,prevPublishTime: freezed == prevPublishTime ? _self.prevPublishTime : prevPublishTime // ignore: cast_nullable_to_non_nullable
as int?,priceServiceReceiveTime: freezed == priceServiceReceiveTime ? _self.priceServiceReceiveTime : priceServiceReceiveTime // ignore: cast_nullable_to_non_nullable
as int?,sequenceNumber: freezed == sequenceNumber ? _self.sequenceNumber : sequenceNumber // ignore: cast_nullable_to_non_nullable
as int?,slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TrackingInfoResponse _$TrackingInfoResponseFromJson(
  Map<String, dynamic> json
) {
    return _TrackingInfoModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$TrackingInfoResponse {

 RiderLocation get riderLocation; DeliveryInfo get deliveryInfo;
/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingInfoResponseCopyWith<TrackingInfoResponse> get copyWith => _$TrackingInfoResponseCopyWithImpl<TrackingInfoResponse>(this as TrackingInfoResponse, _$identity);

  /// Serializes this TrackingInfoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingInfoResponse&&(identical(other.riderLocation, riderLocation) || other.riderLocation == riderLocation)&&(identical(other.deliveryInfo, deliveryInfo) || other.deliveryInfo == deliveryInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riderLocation,deliveryInfo);

@override
String toString() {
  return 'TrackingInfoResponse(riderLocation: $riderLocation, deliveryInfo: $deliveryInfo)';
}


}

/// @nodoc
abstract mixin class $TrackingInfoResponseCopyWith<$Res>  {
  factory $TrackingInfoResponseCopyWith(TrackingInfoResponse value, $Res Function(TrackingInfoResponse) _then) = _$TrackingInfoResponseCopyWithImpl;
@useResult
$Res call({
 RiderLocation riderLocation, DeliveryInfo deliveryInfo
});


$RiderLocationCopyWith<$Res> get riderLocation;$DeliveryInfoCopyWith<$Res> get deliveryInfo;

}
/// @nodoc
class _$TrackingInfoResponseCopyWithImpl<$Res>
    implements $TrackingInfoResponseCopyWith<$Res> {
  _$TrackingInfoResponseCopyWithImpl(this._self, this._then);

  final TrackingInfoResponse _self;
  final $Res Function(TrackingInfoResponse) _then;

/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? riderLocation = null,Object? deliveryInfo = null,}) {
  return _then(_self.copyWith(
riderLocation: null == riderLocation ? _self.riderLocation : riderLocation // ignore: cast_nullable_to_non_nullable
as RiderLocation,deliveryInfo: null == deliveryInfo ? _self.deliveryInfo : deliveryInfo // ignore: cast_nullable_to_non_nullable
as DeliveryInfo,
  ));
}
/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiderLocationCopyWith<$Res> get riderLocation {
  
  return $RiderLocationCopyWith<$Res>(_self.riderLocation, (value) {
    return _then(_self.copyWith(riderLocation: value));
  });
}/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryInfoCopyWith<$Res> get deliveryInfo {
  
  return $DeliveryInfoCopyWith<$Res>(_self.deliveryInfo, (value) {
    return _then(_self.copyWith(deliveryInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [TrackingInfoResponse].
extension TrackingInfoResponsePatterns on TrackingInfoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrackingInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackingInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrackingInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _TrackingInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrackingInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _TrackingInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RiderLocation riderLocation,  DeliveryInfo deliveryInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackingInfoModel() when $default != null:
return $default(_that.riderLocation,_that.deliveryInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RiderLocation riderLocation,  DeliveryInfo deliveryInfo)  $default,) {final _that = this;
switch (_that) {
case _TrackingInfoModel():
return $default(_that.riderLocation,_that.deliveryInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RiderLocation riderLocation,  DeliveryInfo deliveryInfo)?  $default,) {final _that = this;
switch (_that) {
case _TrackingInfoModel() when $default != null:
return $default(_that.riderLocation,_that.deliveryInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrackingInfoModel implements TrackingInfoResponse {
  const _TrackingInfoModel({required this.riderLocation, required this.deliveryInfo});
  factory _TrackingInfoModel.fromJson(Map<String, dynamic> json) => _$TrackingInfoModelFromJson(json);

@override final  RiderLocation riderLocation;
@override final  DeliveryInfo deliveryInfo;

/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackingInfoModelCopyWith<_TrackingInfoModel> get copyWith => __$TrackingInfoModelCopyWithImpl<_TrackingInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrackingInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackingInfoModel&&(identical(other.riderLocation, riderLocation) || other.riderLocation == riderLocation)&&(identical(other.deliveryInfo, deliveryInfo) || other.deliveryInfo == deliveryInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riderLocation,deliveryInfo);

@override
String toString() {
  return 'TrackingInfoResponse(riderLocation: $riderLocation, deliveryInfo: $deliveryInfo)';
}


}

/// @nodoc
abstract mixin class _$TrackingInfoModelCopyWith<$Res> implements $TrackingInfoResponseCopyWith<$Res> {
  factory _$TrackingInfoModelCopyWith(_TrackingInfoModel value, $Res Function(_TrackingInfoModel) _then) = __$TrackingInfoModelCopyWithImpl;
@override @useResult
$Res call({
 RiderLocation riderLocation, DeliveryInfo deliveryInfo
});


@override $RiderLocationCopyWith<$Res> get riderLocation;@override $DeliveryInfoCopyWith<$Res> get deliveryInfo;

}
/// @nodoc
class __$TrackingInfoModelCopyWithImpl<$Res>
    implements _$TrackingInfoModelCopyWith<$Res> {
  __$TrackingInfoModelCopyWithImpl(this._self, this._then);

  final _TrackingInfoModel _self;
  final $Res Function(_TrackingInfoModel) _then;

/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? riderLocation = null,Object? deliveryInfo = null,}) {
  return _then(_TrackingInfoModel(
riderLocation: null == riderLocation ? _self.riderLocation : riderLocation // ignore: cast_nullable_to_non_nullable
as RiderLocation,deliveryInfo: null == deliveryInfo ? _self.deliveryInfo : deliveryInfo // ignore: cast_nullable_to_non_nullable
as DeliveryInfo,
  ));
}

/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiderLocationCopyWith<$Res> get riderLocation {
  
  return $RiderLocationCopyWith<$Res>(_self.riderLocation, (value) {
    return _then(_self.copyWith(riderLocation: value));
  });
}/// Create a copy of TrackingInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryInfoCopyWith<$Res> get deliveryInfo {
  
  return $DeliveryInfoCopyWith<$Res>(_self.deliveryInfo, (value) {
    return _then(_self.copyWith(deliveryInfo: value));
  });
}
}


/// @nodoc
mixin _$RiderLocation {

 double get lat; double get lng; double get heading; DateTime get timestamp;
/// Create a copy of RiderLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiderLocationCopyWith<RiderLocation> get copyWith => _$RiderLocationCopyWithImpl<RiderLocation>(this as RiderLocation, _$identity);

  /// Serializes this RiderLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiderLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng,heading,timestamp);

@override
String toString() {
  return 'RiderLocation(lat: $lat, lng: $lng, heading: $heading, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $RiderLocationCopyWith<$Res>  {
  factory $RiderLocationCopyWith(RiderLocation value, $Res Function(RiderLocation) _then) = _$RiderLocationCopyWithImpl;
@useResult
$Res call({
 double lat, double lng, double heading, DateTime timestamp
});




}
/// @nodoc
class _$RiderLocationCopyWithImpl<$Res>
    implements $RiderLocationCopyWith<$Res> {
  _$RiderLocationCopyWithImpl(this._self, this._then);

  final RiderLocation _self;
  final $Res Function(RiderLocation) _then;

/// Create a copy of RiderLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lng = null,Object? heading = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [RiderLocation].
extension RiderLocationPatterns on RiderLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiderLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiderLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiderLocation value)  $default,){
final _that = this;
switch (_that) {
case _RiderLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiderLocation value)?  $default,){
final _that = this;
switch (_that) {
case _RiderLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double lng,  double heading,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiderLocation() when $default != null:
return $default(_that.lat,_that.lng,_that.heading,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double lng,  double heading,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _RiderLocation():
return $default(_that.lat,_that.lng,_that.heading,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double lng,  double heading,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _RiderLocation() when $default != null:
return $default(_that.lat,_that.lng,_that.heading,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiderLocation implements RiderLocation {
  const _RiderLocation({required this.lat, required this.lng, required this.heading, required this.timestamp});
  factory _RiderLocation.fromJson(Map<String, dynamic> json) => _$RiderLocationFromJson(json);

@override final  double lat;
@override final  double lng;
@override final  double heading;
@override final  DateTime timestamp;

/// Create a copy of RiderLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiderLocationCopyWith<_RiderLocation> get copyWith => __$RiderLocationCopyWithImpl<_RiderLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiderLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiderLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lng,heading,timestamp);

@override
String toString() {
  return 'RiderLocation(lat: $lat, lng: $lng, heading: $heading, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$RiderLocationCopyWith<$Res> implements $RiderLocationCopyWith<$Res> {
  factory _$RiderLocationCopyWith(_RiderLocation value, $Res Function(_RiderLocation) _then) = __$RiderLocationCopyWithImpl;
@override @useResult
$Res call({
 double lat, double lng, double heading, DateTime timestamp
});




}
/// @nodoc
class __$RiderLocationCopyWithImpl<$Res>
    implements _$RiderLocationCopyWith<$Res> {
  __$RiderLocationCopyWithImpl(this._self, this._then);

  final _RiderLocation _self;
  final $Res Function(_RiderLocation) _then;

/// Create a copy of RiderLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lng = null,Object? heading = null,Object? timestamp = null,}) {
  return _then(_RiderLocation(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$DeliveryInfo {

 String get id; String get courierName; String get courierPhone; String get courierAvatar; RiderLocation get riderLocation; LatLng get destination; String get status; int get etaMinutes;
/// Create a copy of DeliveryInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryInfoCopyWith<DeliveryInfo> get copyWith => _$DeliveryInfoCopyWithImpl<DeliveryInfo>(this as DeliveryInfo, _$identity);

  /// Serializes this DeliveryInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.courierPhone, courierPhone) || other.courierPhone == courierPhone)&&(identical(other.courierAvatar, courierAvatar) || other.courierAvatar == courierAvatar)&&(identical(other.riderLocation, riderLocation) || other.riderLocation == riderLocation)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.status, status) || other.status == status)&&(identical(other.etaMinutes, etaMinutes) || other.etaMinutes == etaMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courierName,courierPhone,courierAvatar,riderLocation,destination,status,etaMinutes);

@override
String toString() {
  return 'DeliveryInfo(id: $id, courierName: $courierName, courierPhone: $courierPhone, courierAvatar: $courierAvatar, riderLocation: $riderLocation, destination: $destination, status: $status, etaMinutes: $etaMinutes)';
}


}

/// @nodoc
abstract mixin class $DeliveryInfoCopyWith<$Res>  {
  factory $DeliveryInfoCopyWith(DeliveryInfo value, $Res Function(DeliveryInfo) _then) = _$DeliveryInfoCopyWithImpl;
@useResult
$Res call({
 String id, String courierName, String courierPhone, String courierAvatar, RiderLocation riderLocation, LatLng destination, String status, int etaMinutes
});


$RiderLocationCopyWith<$Res> get riderLocation;

}
/// @nodoc
class _$DeliveryInfoCopyWithImpl<$Res>
    implements $DeliveryInfoCopyWith<$Res> {
  _$DeliveryInfoCopyWithImpl(this._self, this._then);

  final DeliveryInfo _self;
  final $Res Function(DeliveryInfo) _then;

/// Create a copy of DeliveryInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courierName = null,Object? courierPhone = null,Object? courierAvatar = null,Object? riderLocation = null,Object? destination = null,Object? status = null,Object? etaMinutes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courierName: null == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String,courierPhone: null == courierPhone ? _self.courierPhone : courierPhone // ignore: cast_nullable_to_non_nullable
as String,courierAvatar: null == courierAvatar ? _self.courierAvatar : courierAvatar // ignore: cast_nullable_to_non_nullable
as String,riderLocation: null == riderLocation ? _self.riderLocation : riderLocation // ignore: cast_nullable_to_non_nullable
as RiderLocation,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as LatLng,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,etaMinutes: null == etaMinutes ? _self.etaMinutes : etaMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of DeliveryInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiderLocationCopyWith<$Res> get riderLocation {
  
  return $RiderLocationCopyWith<$Res>(_self.riderLocation, (value) {
    return _then(_self.copyWith(riderLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeliveryInfo].
extension DeliveryInfoPatterns on DeliveryInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryInfo value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryInfo value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String courierName,  String courierPhone,  String courierAvatar,  RiderLocation riderLocation,  LatLng destination,  String status,  int etaMinutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryInfo() when $default != null:
return $default(_that.id,_that.courierName,_that.courierPhone,_that.courierAvatar,_that.riderLocation,_that.destination,_that.status,_that.etaMinutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String courierName,  String courierPhone,  String courierAvatar,  RiderLocation riderLocation,  LatLng destination,  String status,  int etaMinutes)  $default,) {final _that = this;
switch (_that) {
case _DeliveryInfo():
return $default(_that.id,_that.courierName,_that.courierPhone,_that.courierAvatar,_that.riderLocation,_that.destination,_that.status,_that.etaMinutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String courierName,  String courierPhone,  String courierAvatar,  RiderLocation riderLocation,  LatLng destination,  String status,  int etaMinutes)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryInfo() when $default != null:
return $default(_that.id,_that.courierName,_that.courierPhone,_that.courierAvatar,_that.riderLocation,_that.destination,_that.status,_that.etaMinutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryInfo implements DeliveryInfo {
  const _DeliveryInfo({required this.id, required this.courierName, required this.courierPhone, required this.courierAvatar, required this.riderLocation, required this.destination, required this.status, required this.etaMinutes});
  factory _DeliveryInfo.fromJson(Map<String, dynamic> json) => _$DeliveryInfoFromJson(json);

@override final  String id;
@override final  String courierName;
@override final  String courierPhone;
@override final  String courierAvatar;
@override final  RiderLocation riderLocation;
@override final  LatLng destination;
@override final  String status;
@override final  int etaMinutes;

/// Create a copy of DeliveryInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryInfoCopyWith<_DeliveryInfo> get copyWith => __$DeliveryInfoCopyWithImpl<_DeliveryInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.courierName, courierName) || other.courierName == courierName)&&(identical(other.courierPhone, courierPhone) || other.courierPhone == courierPhone)&&(identical(other.courierAvatar, courierAvatar) || other.courierAvatar == courierAvatar)&&(identical(other.riderLocation, riderLocation) || other.riderLocation == riderLocation)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.status, status) || other.status == status)&&(identical(other.etaMinutes, etaMinutes) || other.etaMinutes == etaMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courierName,courierPhone,courierAvatar,riderLocation,destination,status,etaMinutes);

@override
String toString() {
  return 'DeliveryInfo(id: $id, courierName: $courierName, courierPhone: $courierPhone, courierAvatar: $courierAvatar, riderLocation: $riderLocation, destination: $destination, status: $status, etaMinutes: $etaMinutes)';
}


}

/// @nodoc
abstract mixin class _$DeliveryInfoCopyWith<$Res> implements $DeliveryInfoCopyWith<$Res> {
  factory _$DeliveryInfoCopyWith(_DeliveryInfo value, $Res Function(_DeliveryInfo) _then) = __$DeliveryInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String courierName, String courierPhone, String courierAvatar, RiderLocation riderLocation, LatLng destination, String status, int etaMinutes
});


@override $RiderLocationCopyWith<$Res> get riderLocation;

}
/// @nodoc
class __$DeliveryInfoCopyWithImpl<$Res>
    implements _$DeliveryInfoCopyWith<$Res> {
  __$DeliveryInfoCopyWithImpl(this._self, this._then);

  final _DeliveryInfo _self;
  final $Res Function(_DeliveryInfo) _then;

/// Create a copy of DeliveryInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courierName = null,Object? courierPhone = null,Object? courierAvatar = null,Object? riderLocation = null,Object? destination = null,Object? status = null,Object? etaMinutes = null,}) {
  return _then(_DeliveryInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courierName: null == courierName ? _self.courierName : courierName // ignore: cast_nullable_to_non_nullable
as String,courierPhone: null == courierPhone ? _self.courierPhone : courierPhone // ignore: cast_nullable_to_non_nullable
as String,courierAvatar: null == courierAvatar ? _self.courierAvatar : courierAvatar // ignore: cast_nullable_to_non_nullable
as String,riderLocation: null == riderLocation ? _self.riderLocation : riderLocation // ignore: cast_nullable_to_non_nullable
as RiderLocation,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as LatLng,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,etaMinutes: null == etaMinutes ? _self.etaMinutes : etaMinutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of DeliveryInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiderLocationCopyWith<$Res> get riderLocation {
  
  return $RiderLocationCopyWith<$Res>(_self.riderLocation, (value) {
    return _then(_self.copyWith(riderLocation: value));
  });
}
}

// dart format on

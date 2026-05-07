// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TrackingState {

 ViewState get viewState; DeliveryInfoEntity? get deliveryInfo; RiderLocationEntity? get riderLocation; String? get errorMessage;
/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackingStateCopyWith<TrackingState> get copyWith => _$TrackingStateCopyWithImpl<TrackingState>(this as TrackingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackingState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.deliveryInfo, deliveryInfo) || other.deliveryInfo == deliveryInfo)&&(identical(other.riderLocation, riderLocation) || other.riderLocation == riderLocation)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,deliveryInfo,riderLocation,errorMessage);

@override
String toString() {
  return 'TrackingState(viewState: $viewState, deliveryInfo: $deliveryInfo, riderLocation: $riderLocation, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $TrackingStateCopyWith<$Res>  {
  factory $TrackingStateCopyWith(TrackingState value, $Res Function(TrackingState) _then) = _$TrackingStateCopyWithImpl;
@useResult
$Res call({
 ViewState viewState, DeliveryInfoEntity? deliveryInfo, RiderLocationEntity? riderLocation, String? errorMessage
});




}
/// @nodoc
class _$TrackingStateCopyWithImpl<$Res>
    implements $TrackingStateCopyWith<$Res> {
  _$TrackingStateCopyWithImpl(this._self, this._then);

  final TrackingState _self;
  final $Res Function(TrackingState) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewState = null,Object? deliveryInfo = freezed,Object? riderLocation = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
viewState: null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,deliveryInfo: freezed == deliveryInfo ? _self.deliveryInfo : deliveryInfo // ignore: cast_nullable_to_non_nullable
as DeliveryInfoEntity?,riderLocation: freezed == riderLocation ? _self.riderLocation : riderLocation // ignore: cast_nullable_to_non_nullable
as RiderLocationEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TrackingState].
extension TrackingStatePatterns on TrackingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrackingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrackingState value)  $default,){
final _that = this;
switch (_that) {
case _TrackingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrackingState value)?  $default,){
final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewState viewState,  DeliveryInfoEntity? deliveryInfo,  RiderLocationEntity? riderLocation,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
return $default(_that.viewState,_that.deliveryInfo,_that.riderLocation,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewState viewState,  DeliveryInfoEntity? deliveryInfo,  RiderLocationEntity? riderLocation,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _TrackingState():
return $default(_that.viewState,_that.deliveryInfo,_that.riderLocation,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewState viewState,  DeliveryInfoEntity? deliveryInfo,  RiderLocationEntity? riderLocation,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _TrackingState() when $default != null:
return $default(_that.viewState,_that.deliveryInfo,_that.riderLocation,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _TrackingState implements TrackingState {
  const _TrackingState({this.viewState = ViewState.idle, this.deliveryInfo, this.riderLocation, this.errorMessage});
  

@override@JsonKey() final  ViewState viewState;
@override final  DeliveryInfoEntity? deliveryInfo;
@override final  RiderLocationEntity? riderLocation;
@override final  String? errorMessage;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrackingStateCopyWith<_TrackingState> get copyWith => __$TrackingStateCopyWithImpl<_TrackingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrackingState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.deliveryInfo, deliveryInfo) || other.deliveryInfo == deliveryInfo)&&(identical(other.riderLocation, riderLocation) || other.riderLocation == riderLocation)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,deliveryInfo,riderLocation,errorMessage);

@override
String toString() {
  return 'TrackingState(viewState: $viewState, deliveryInfo: $deliveryInfo, riderLocation: $riderLocation, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$TrackingStateCopyWith<$Res> implements $TrackingStateCopyWith<$Res> {
  factory _$TrackingStateCopyWith(_TrackingState value, $Res Function(_TrackingState) _then) = __$TrackingStateCopyWithImpl;
@override @useResult
$Res call({
 ViewState viewState, DeliveryInfoEntity? deliveryInfo, RiderLocationEntity? riderLocation, String? errorMessage
});




}
/// @nodoc
class __$TrackingStateCopyWithImpl<$Res>
    implements _$TrackingStateCopyWith<$Res> {
  __$TrackingStateCopyWithImpl(this._self, this._then);

  final _TrackingState _self;
  final $Res Function(_TrackingState) _then;

/// Create a copy of TrackingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewState = null,Object? deliveryInfo = freezed,Object? riderLocation = freezed,Object? errorMessage = freezed,}) {
  return _then(_TrackingState(
viewState: null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,deliveryInfo: freezed == deliveryInfo ? _self.deliveryInfo : deliveryInfo // ignore: cast_nullable_to_non_nullable
as DeliveryInfoEntity?,riderLocation: freezed == riderLocation ? _self.riderLocation : riderLocation // ignore: cast_nullable_to_non_nullable
as RiderLocationEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

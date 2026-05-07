import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_tracking_app/src/core/enums/view_state.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/delivery_info_entity.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/rider_location_entity.dart';

part 'tracking_state.freezed.dart';

@freezed
abstract class TrackingState with _$TrackingState {
  const factory TrackingState({
   
    @Default(ViewState.idle) ViewState viewState,
    DeliveryInfoEntity? deliveryInfo,
    RiderLocationEntity? riderLocation,
    String? errorMessage,
  }) = _TrackingState;
}
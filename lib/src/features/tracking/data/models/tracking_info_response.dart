import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/enums/delivery_status.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/delivery_info_entity.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/rider_location_entity.dart';

part 'tracking_info_response.freezed.dart';
part 'tracking_info_response.g.dart';

@freezed
abstract class TrackingInfoResponse with _$TrackingInfoResponse {
  const factory TrackingInfoResponse({
    required RiderLocation riderLocation,
    required DeliveryInfo deliveryInfo,
  }) = _TrackingInfoModel;

  factory TrackingInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackingInfoResponseFromJson(json);
}

@freezed
abstract class RiderLocation with _$RiderLocation {
  const factory RiderLocation({
    required double lat,
    required double lng,
    required double heading,
    required DateTime timestamp,
  }) = _RiderLocation;

  factory RiderLocation.fromJson(Map<String, dynamic> json) =>
      _$RiderLocationFromJson(json);
}

///  Extension to map the Model to the Domain Entity
extension RiderLocationX on RiderLocation {
  RiderLocationEntity toEntity() {
    return RiderLocationEntity(
      lat: lat,
      lng: lng,
      heading: heading,
      timestamp: timestamp,
    );
  }
}

@freezed
abstract class DeliveryInfo with _$DeliveryInfo {
  const factory DeliveryInfo({
    required String id,
    required String courierName,
    required String courierPhone,
    required String courierAvatar,
    required RiderLocation riderLocation,
    required LatLng destination,
    required DeliveryStatus status,
    required int etaMinutes,
  }) = _DeliveryInfo;

  factory DeliveryInfo.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInfoFromJson(json);
}

///  Extension to map the Model to the Domain Entity
extension DeliveryInfoX on DeliveryInfo {
  DeliveryInfoEntity toEntity() => DeliveryInfoEntity(
    id: id,
    courierName: courierName,
    courierPhone: courierPhone,
    courierAvatar: courierAvatar,
    riderLocation: riderLocation.toEntity(),
    destination: destination,
    status: status,
    etaMinutes: etaMinutes,
  );
}

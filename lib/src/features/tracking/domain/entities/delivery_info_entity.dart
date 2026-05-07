import 'package:equatable/equatable.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/enums/delivery_status.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/rider_location_entity.dart';

class DeliveryInfoEntity extends Equatable {
  const DeliveryInfoEntity({
    required this.id,
    required this.courierName,
    required this.courierPhone,
    required this.courierAvatar,
    required this.riderLocation,
    required this.destination,
    required this.status,
    required this.etaMinutes,
  });
  final String id;
  final String courierName;
  final String courierPhone;
  final String courierAvatar;
  final RiderLocationEntity riderLocation;
  final LatLng destination;
  final DeliveryStatus status;
  final int etaMinutes;

  @override
  List<Object?> get props => [
    id,
    courierName,
    courierPhone,
    destination,
    status,
    etaMinutes,
    riderLocation,
    courierAvatar,
  ];
}

import 'package:live_tracking_app/src/core/utils/type_def.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/delivery_info_entity.dart';

/// Abstract contract for the tracking data layer.
abstract interface class TrackingRepository {
  Stream<FailureOr<DeliveryInfoEnity>> watchRiderLocation(String deliveryId);
  Future<FailureOr<DeliveryInfoEnity>> getDeliveryInfo(String deliveryId);
}

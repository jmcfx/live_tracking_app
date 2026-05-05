
import 'package:live_tracking_app/src/core/utils/type_def.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/delivery_info.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/rider_location.dart';


/// Abstract contract for the tracking data layer.
///
/// In clean architecture, the domain layer defines WHAT data it needs
/// but not HOW it's fetched. The data layer provides the implementation.
abstract interface class TrackingRepository {

  Stream<FailureOr<RiderLocation>> watchRiderLocation(String deliveryId);
  Future<FailureOr<DeliveryInfo>> getDeliveryInfo(String deliveryId);
}

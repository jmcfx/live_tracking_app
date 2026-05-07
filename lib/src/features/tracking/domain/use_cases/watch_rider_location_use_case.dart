import 'package:live_tracking_app/src/core/use_case/use_case.dart';
import 'package:live_tracking_app/src/core/utils/type_def.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/delivery_info_entity.dart';
import 'package:live_tracking_app/src/features/tracking/domain/repositories/tracking_repository.dart';

class WatchRiderLocationUseCase
    implements StreamUseCase<DeliveryInfoEnity, RiderLocationParams> {
  final TrackingRepository _repository;

  WatchRiderLocationUseCase({required TrackingRepository repository})
    : _repository = repository;

  @override
  Stream<FailureOr<DeliveryInfoEnity>> call(RiderLocationParams params) {
    return _repository.watchRiderLocation(params.deliveryId);
  }
}

typedef RiderLocationParams = ({String deliveryId});

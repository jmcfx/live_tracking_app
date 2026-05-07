import 'package:live_tracking_app/src/core/use_case/use_case.dart';
import 'package:live_tracking_app/src/core/utils/type_def.dart';
import 'package:live_tracking_app/src/features/tracking/domain/entities/delivery_info_entity.dart';
import 'package:live_tracking_app/src/features/tracking/domain/repositories/tracking_repository.dart';

class GetDeliveryInfoUseCase
    implements UseCase<DeliveryInfoEntity, GetDeliveryInfoParams> {
  final TrackingRepository _repository;

  GetDeliveryInfoUseCase({required TrackingRepository repository})
    : _repository = repository;

  @override
  Future<FailureOr<DeliveryInfoEntity>> call(
    GetDeliveryInfoParams params,
  ) async {
    return await _repository.getDeliveryInfo(params.id);
  }
}

typedef GetDeliveryInfoParams = ({String id});

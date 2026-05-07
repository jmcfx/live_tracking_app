import 'package:live_tracking_app/src/core/utils/type_def.dart';

/// Base interface for Future-based business logic.
abstract interface class UseCase<DataType, Params> {
  Future<FailureOr<DataType>> call(Params params);
}

/// Base interface for Stream-based business logic (e.g., live tracking).
abstract interface class StreamUseCase<DataType, Params> {
  Stream<FailureOr<DataType>> call(Params params);
}

/// typedef NoParams for UseCases that don't take any parameters.
typedef NoParams = ();

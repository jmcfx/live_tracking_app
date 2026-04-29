import 'package:live_tracking_app/src/core/utils/type_def.dart';

/// This takes [Params] as input and returns Either Failure or [DataType]
abstract interface class UseCase<DataType, Params> {
  Future<FailureOr<DataType>> call(Params params);
}

/// use_case that don't take params 
/// used records because they are immutable and have prebuilt value equality..
typedef NoParams = ();

import 'package:live_tracking_app/src/core/utils/type_def.dart';

/// A use case that returns a [Stream] instead of a Future.
/// Used for real-time data like live tracking updates.
///
/// Unlike [UseCase] which wraps results in [FailureOr] (Either),
/// streams handle errors natively through their error channel,
/// so we return [Stream<DataType>] directly.
abstract interface class StreamUseCase<DataType, Params> {
  Stream<FailureOr<DataType>> call(Params params);
}

/// use_case that don't take params
/// used records because they are immutable and have prebuilt value equality..
typedef NoParams = ();

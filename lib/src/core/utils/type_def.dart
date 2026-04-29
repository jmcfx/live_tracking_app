import 'package:dartz/dartz.dart';
import 'package:live_tracking_app/src/core/errors/failure.dart';

typedef FailureOr<T> = Either<Failure, T>;

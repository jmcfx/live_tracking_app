import 'package:live_tracking_app/src/core/errors/exceptions.dart';
import 'package:live_tracking_app/src/core/errors/failure.dart';

Failure mapExceptionToFailure(Object param) {
  return switch (param) {
 ServerException _ => ServerFailure(message: param.toString()),
 NetworkException _ => NetworkFailure(message: param.toString()),
 UnknownException _ => UnknownFailure(message: param.toString()),
    _ => ServerFailure(message: param.toString()),
  };
}

import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  // Use curly braces here to make them named parameters
  const Failure({required this.message, this.payload});

  final String message;
  final dynamic payload;

  @override
  List<Object?> get props => [message, payload];
}

class ServerFailure extends Failure {
  const ServerFailure({
    super.message = 'Something Went Wrong',
    super.payload,
  });
}

class CacheFailure extends Failure {
  const CacheFailure({super.message = 'Cache Error Occurred'});
}

class UnknownFailure extends Failure {
  const UnknownFailure({super.message = 'An Unknown Error Occurred'});
}

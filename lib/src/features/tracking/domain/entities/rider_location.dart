import 'package:equatable/equatable.dart';

class RiderLocation extends Equatable {
  const RiderLocation({
    required this.lat,
    required this.lng,
    required this.heading,
    required this.timestamp,
  });

  final double lat;
  final double lng;
  final double heading;
  final DateTime timestamp;

  @override
  List<Object?> get props => [lat, lng, heading, timestamp];
}

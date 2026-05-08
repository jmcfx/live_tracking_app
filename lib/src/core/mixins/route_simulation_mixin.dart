import 'dart:convert';
import 'dart:io';

import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';
import 'package:live_tracking_app/src/core/enums/delivery_status.dart';
import 'package:live_tracking_app/src/core/errors/exceptions.dart';
import 'package:live_tracking_app/src/features/tracking/data/models/tracking_info_response.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

mixin RouteSimulationMixin {
  static const int _steps = 4;
  static const Duration _stepDelay = Duration(milliseconds: 1000);

  Future<void> runSimulation({
    required List<LatLng> routePoints,
    required WebSocketChannel channel,
    required String deliveryId,
  }) async {
    final points = routePoints.reversed.toList();
    final totalSteps = (points.length - 1) * _steps;
    int currentStep = 0;

    for (int i = 0; i < points.length - 1; i++) {
      final start = points[i];
      final end = points[i + 1];
      final heading = const Distance().bearing(start, end);

      for (int step = 1; step <= _steps; step++) {
        if (channel.closeCode != null) return;

        currentStep++;
        final double fraction = step / _steps;
        final double lat =
            start.latitude + (end.latitude - start.latitude) * fraction;
        final double lng =
            start.longitude + (end.longitude - start.longitude) * fraction;

        final remainingFraction = 1 - (currentStep / totalSteps);
        final etaMinutes = (10 * remainingFraction).ceil();

        final isDelivered = currentStep == totalSteps;
        final response = TrackingInfoResponse(
          riderLocation: RiderLocation(
            lat: lat,
            lng: lng,
            heading: heading,
            timestamp: DateTime.now(),
          ),
          deliveryInfo: DeliveryInfo(
            id: deliveryId,
            courierName: 'Presley Williams',
            courierPhone: '+2348102373232',
            courierAvatar: '',
            riderLocation: RiderLocation(
              lat: lat,
              lng: lng,
              heading: heading,
              timestamp: DateTime.now(),
            ),
            destination: AppMapConfig.routePoints.first,
            status: isDelivered
                ? DeliveryStatus.delivered
                : DeliveryStatus.onDelivered,
            etaMinutes: isDelivered ? 0 : etaMinutes,
          ),
        );

        try {
          channel.sink.add(jsonEncode(response));
        } on WebSocketChannelException {
          throw ServerException();
        } on SocketException {
          throw NetworkException();
        } catch (e) {
          throw UnknownException();
        }

        await Future.delayed(_stepDelay);
      }
    }
  }
}

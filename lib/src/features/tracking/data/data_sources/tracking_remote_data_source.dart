import 'dart:async';
import 'dart:convert';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';
import 'package:live_tracking_app/src/core/enums/delivery_status.dart';
import 'package:live_tracking_app/src/core/mixins/route_simulation_mixin.dart';
import 'package:live_tracking_app/src/features/tracking/data/client/tracking_socket_client.dart';
import 'package:live_tracking_app/src/features/tracking/data/models/tracking_info_response.dart';

abstract interface class TrackingRemoteDataSource {
  Stream<TrackingInfoResponse> getLiveLocationStream(String deliveryId);
  Future<TrackingInfoResponse> getDeliveryInfo(String deliveryId);
}

class TrackingRemoteDataSourceImpl
    with RouteSimulationMixin
    implements TrackingRemoteDataSource {
  final TrackingSocketClient _socket;

  TrackingRemoteDataSourceImpl({required TrackingSocketClient socket})
    : _socket = socket;

  @override
  Stream<TrackingInfoResponse> getLiveLocationStream(String deliveryId) {
    /// Mocking live location stream
    runSimulation(
      routePoints: AppMapConfig.routePoints,
      channel: _socket.channel,
      deliveryId: deliveryId,
    );

    /// Live location stream from the socket
    return _socket.channel.stream.map((event) {
      final Map<String, dynamic> data = jsonDecode(event);
      return TrackingInfoResponse.fromJson(data);
    });
  }

  @override
  Future<TrackingInfoResponse> getDeliveryInfo(String deliveryId) async {
    await Future.delayed(const Duration(milliseconds: 1));
    return TrackingInfoResponse(
      riderLocation: RiderLocation(
        lat: 39.3853,
        lng: -77.3888,
        heading: 0.0,
        timestamp: DateTime.now(),
      ),
      deliveryInfo: DeliveryInfo(
        id: deliveryId,
        courierName: 'Presley Williams',
        courierPhone: '+2348102373232',
        courierAvatar: 'https://i.pravatar.cc/150?u=$deliveryId',
        riderLocation: RiderLocation(
          lat: 39.3853,
          lng: -77.3888,
          heading: 0.0,
          timestamp: DateTime.now(),
        ),
        destination: AppMapConfig.routePoints.first,
        status: DeliveryStatus.onTheWay,
        etaMinutes: 10,
      ),
    );
  }
}

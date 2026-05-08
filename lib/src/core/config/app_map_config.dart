import 'package:latlong2/latlong.dart';

class AppMapConfig {
  AppMapConfig._();

  /// OpenStreetMap tile URL for map display.
  static const String mapTileUrl =
      'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const String userAgentPackageName = 'com.example.live_tracking_app';
  static const LatLng initialCenter = LatLng(38.8551, -77.0264);

  /// predefined route coordinates for the rider
  static const List<LatLng> routePoints = [
    LatLng(39.4143, -77.4105),
    LatLng(39.2900, -77.2000),
    LatLng(39.1500, -77.2000),
    LatLng(39.1500, -76.9000),
    LatLng(38.9300, -76.9000),
    LatLng(38.9323, -76.5491),
  ];

  /// WebSocket URl for live location updates.
  static const String webSocketUrl = 'wss://ws.postman-echo.com/raw';
}

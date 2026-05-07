import 'package:latlong2/latlong.dart';

class AppMapConfig {
  AppMapConfig._();

  /// OpenStreetMap tile URL for map display.
  static const String mapTileUrl =
      'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const String userAgentPackageName = 'com.example.live_tracking_app';
  static const LatLng initialCenter = LatLng(38.9784, -76.922);

  /// predefined route coordinates for the rider....
  static const List<LatLng> routePoints = [
    LatLng(39.3853, -77.3888),
    LatLng(39.2905, -77.2001),
    LatLng(39.1555, -77.1656),
    LatLng(39.1356, -76.9950),
    LatLng(38.9866, -76.7112),
    LatLng(38.9784, -76.922),
  ];

  /// WebSocket URl for live location updates.
  static const String webSocketUrl = 'wss://ws.postman-echo.com/raw';
}

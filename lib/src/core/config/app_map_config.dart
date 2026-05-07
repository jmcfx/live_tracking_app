import 'package:latlong2/latlong.dart';

class AppMapConfig {
  AppMapConfig._();

  /// OpenStreetMap tile URL for map display.
  static const String mapTileUrl =
      'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const String userAgentPackageName = 'com.example.live_tracking_app';
  static const LatLng initialCenter = LatLng(38.8551, -77.0264);

  /// predefined route coordinates for the rider (Staircase in DC/Alexandria)
  static const List<LatLng> routePoints = [
    LatLng(39.4143, -77.4105), // Destination (Frederick)
    LatLng(39.2900, -77.2000), // Turn 1 (Diagonal SE)
    LatLng(39.1500, -77.2000), // Turn 2 (Vertical South)
    LatLng(39.1500, -76.9000), // Turn 3 (Horizontal East)
    LatLng(38.9300, -76.9000), // Turn 4 (Vertical South)
    LatLng(38.9323, -76.5491), // Start (Edgewater)
  ];

  /// WebSocket URl for live location updates.
  static const String webSocketUrl = 'wss://ws.postman-echo.com/raw';
}

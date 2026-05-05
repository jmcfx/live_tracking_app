import 'package:latlong2/latlong.dart';

class AppMapConfig {
  AppMapConfig._();

  static const String mapTileUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
  static const String userAgentPackageName = 'com.example.live_tracking_app';
  static const LatLng initialCenter = LatLng(38.8800, -77.02500);
}
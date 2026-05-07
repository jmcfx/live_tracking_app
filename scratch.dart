import 'package:latlong2/latlong.dart';
void main() {
  final start = const LatLng(38.9784, -76.922);
  final end = const LatLng(38.9785, -76.923);
  print(const Distance().bearing(start, end));
}

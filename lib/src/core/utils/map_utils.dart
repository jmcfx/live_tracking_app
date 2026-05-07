import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';

class MapUtils {
  MapUtils._();

  /// Calculates the remaining route points from the current rider position to the destination.
  static List<LatLng> remainingPath(LatLng riderPos) {
    final route = AppMapConfig.routePoints;
    if (route.isEmpty) return [];

    int closestSegmentIndex = 0;
    double minDistance = double.infinity;

    // Find the segment (route[i], route[i+1]) closest to the rider
    // routePoints is [Destination, ..., Start]
    for (int i = 0; i < route.length - 1; i++) {
      final distance = _distanceToSegment(riderPos, route[i], route[i + 1]);
      if (distance < minDistance) {
        minDistance = distance;
        closestSegmentIndex = i;
      }
    }

    // The remaining path is: Rider -> Next Point -> ... -> Destination
    // Since route is [D, ..., S], upcoming points are at indices <= closestSegmentIndex
    final List<LatLng> points = [riderPos];
    for (int i = closestSegmentIndex; i >= 0; i--) {
      points.add(route[i]);
    }

    return points;
  }

  static double _distanceToSegment(LatLng p, LatLng a, LatLng b) {
    final double l2 = _distSq(a, b);
    if (l2 == 0.0) return _distSq(p, a);
    final double t = ((p.latitude - a.latitude) * (b.latitude - a.latitude) +
            (p.longitude - a.longitude) * (b.longitude - a.longitude)) /
        l2;
    if (t < 0.0) return _distSq(p, a);
    if (t > 1.0) return _distSq(p, b);
    return _distSq(
      p,
      LatLng(
        a.latitude + t * (b.latitude - a.latitude),
        a.longitude + t * (b.longitude - a.longitude),
      ),
    );
  }

  static double _distSq(LatLng v, LatLng w) {
    return (v.latitude - w.latitude) * (v.latitude - w.latitude) +
        (v.longitude - w.longitude) * (v.longitude - w.longitude);
  }
}

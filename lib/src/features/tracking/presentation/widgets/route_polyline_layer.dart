import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/utils/map_utils.dart';

class RoutePolylineLayer extends StatelessWidget {
  final LatLng currentRiderPoint;

  const RoutePolylineLayer({super.key, required this.currentRiderPoint});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final remainingPoints = MapUtils.remainingPath(currentRiderPoint);

    return PolylineLayer(
      polylines: [
        Polyline(
          strokeJoin: StrokeJoin.round,
          points: remainingPoints,
          strokeWidth: 7.w,
          color: theme.colorScheme.onPrimaryFixedVariant.withValues(
            alpha: 0.90,
          ),
          strokeCap: StrokeCap.round,
          borderStrokeWidth: 4.29,
          borderColor: theme.colorScheme.onSecondary.withValues(alpha: 0.25),
        ),
      ],
    );
  }
}

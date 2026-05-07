import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';

class RoutePolylineLayer extends StatelessWidget {
  const RoutePolylineLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PolylineLayer(
      polylines: [
        Polyline(
          strokeJoin: StrokeJoin.round,
          points: AppMapConfig.routePoints,
          strokeWidth: 7.w,
          color: theme.colorScheme.onPrimaryFixedVariant.withValues(
            alpha: 0.90,
          ),
          strokeCap: StrokeCap.round,
          borderStrokeWidth: 4.29,
          borderColor: theme.colorScheme.onSecondary.withValues(
            alpha: 0.25,
          ),
        ),
      ],
    );
  }
}

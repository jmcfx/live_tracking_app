import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/notifiers/tracking_notifier.dart';

class CustomMaps extends ConsumerStatefulWidget {
  const CustomMaps({super.key});

  @override
  ConsumerState<CustomMaps> createState() => _CustomMapsState();
}

class _CustomMapsState extends ConsumerState<CustomMaps> {
  late final MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final riderLocation = ref.watch(
      trackingProvider.select((s) => s.riderLocation),
    );
    final deliveryInfo = ref.watch(
      trackingProvider.select((s) => s.deliveryInfo),
    );


    final destinationPoint =
        deliveryInfo?.destination ?? AppMapConfig.routePoints.first;

    final currentRiderPoint = riderLocation != null
        ? LatLng(riderLocation.lat, riderLocation.lng)
        : AppMapConfig.routePoints.last;

    final double rotationAngle =
        (riderLocation?.heading ?? 0) * (math.pi / 180);

    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: AppMapConfig.initialCenter,
        initialZoom: 9.0,
      ),
      children: [
        TileLayer(
          urlTemplate: AppMapConfig.mapTileUrl,
          userAgentPackageName: AppMapConfig.userAgentPackageName,
        ),
        PolylineLayer(
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
        ),
        MarkerLayer(
          alignment: Alignment.bottomCenter,
          markers: [
            Marker(
              rotate: true,
              width: 29.w,
              height: 29.h,
              point: destinationPoint,
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                AppIcons.marker,
                alignment: Alignment.center,
              ),
            ),

            Marker(
              rotate: true,
              width: 40.w,
              height: 40.h,
              point: currentRiderPoint,
              child: Transform.rotate(
                angle: rotationAngle,
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(8.0).r,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryFixedVariant,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.scaffoldBackgroundColor,
                      width: 3.5.r,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.onPrimaryFixedVariant
                            .withValues(alpha: 0.3),
                        blurRadius: 0,
                        spreadRadius: 9.07,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    alignment: AlignmentGeometry.center,
                    AppIcons.rider,
                    width: 18.w,
                    height: 18.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/notifiers/tracking_notifier.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/destination_marker_layer.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/rider_marker_layer.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/route_polyline_layer.dart';

class CustomMaps extends ConsumerStatefulWidget {
  const CustomMaps({super.key});

  @override
  ConsumerState<CustomMaps> createState() => _CustomMapsState();
}

class _CustomMapsState extends ConsumerState<CustomMaps>
    with SingleTickerProviderStateMixin {
  late final MapController _mapController;
  late final AnimationController _blinkController;
  LatLng? _previousRiderPoint;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    _blinkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _mapController.dispose();
    _blinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final riderLocation = ref.watch(
      trackingProvider.select((s) => s.riderLocation),
    );
    final deliveryInfo = ref.watch(
      trackingProvider.select((s) => s.deliveryInfo),
    );

    ref.listen(trackingProvider.select((s) => s.riderLocation), (
      previous,
      next,
    ) {
      if (next != null && previous == null) {
        final destination =
            deliveryInfo?.destination ?? AppMapConfig.routePoints.first;
        final bounds = LatLngBounds.fromPoints([
          LatLng(next.lat, next.lng),
          destination,
        ]);

        _mapController.fitCamera(
          CameraFit.bounds(
            bounds: bounds,
            padding: EdgeInsets.only(
              top: 70.0.h,
              left: 70.0.w,
              right: 70.0.w,
              bottom: 350.0.h,
            ),
          ),
        );
      }
    });

    final destinationPoint =
        deliveryInfo?.destination ?? AppMapConfig.routePoints.first;

    final currentRiderPoint = riderLocation != null
        ? LatLng(riderLocation.lat, riderLocation.lng)
        : AppMapConfig.routePoints.last;

    final double rotationAngle =
        (riderLocation?.heading ?? 0) * (math.pi / 180.r);

    final beginPoint = _previousRiderPoint ?? AppMapConfig.routePoints.last;
    _previousRiderPoint = currentRiderPoint;

    return TweenAnimationBuilder<LatLng>(
      tween: _LatLngTween(
        begin: beginPoint,
        end: currentRiderPoint,
      ),
      duration: const Duration(milliseconds: 1000),
      builder: (context, animatedPoint, _) {
        return TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: rotationAngle),
          duration: const Duration(milliseconds: 1000),
          builder: (context, animatedRotation, _) {
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
                DestinationMarkerLayer(destinationPoint: destinationPoint),
                RoutePolylineLayer(currentRiderPoint: animatedPoint),
                RiderMarkerLayer(
                  animatedPoint: animatedPoint,
                  animatedRotation: animatedRotation,
                  blinkController: _blinkController,
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _LatLngTween extends Tween<LatLng> {
  _LatLngTween({super.begin, super.end});

  @override
  LatLng lerp(double t) {
    final lat = begin!.latitude + (end!.latitude - begin!.latitude) * t;
    final lng = begin!.longitude + (end!.longitude - begin!.longitude) * t;
    return LatLng(lat, lng);
  }
}

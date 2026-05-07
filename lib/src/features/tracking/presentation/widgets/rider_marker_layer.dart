import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';

class RiderMarkerLayer extends StatelessWidget {
  final LatLng currentRiderPoint;
  final double rotationAngle;
  final AnimationController blinkController;

  const RiderMarkerLayer({
    super.key,
    required this.currentRiderPoint,
    required this.rotationAngle,
    required this.blinkController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TweenAnimationBuilder<LatLng>(
      tween: _LatLngTween(
        begin: AppMapConfig.routePoints.last,
        end: currentRiderPoint,
      ),
      duration: const Duration(milliseconds: 1000),
      builder: (context, animatedPoint, _) {
        return TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: rotationAngle),
          duration: const Duration(milliseconds: 1000),
          builder: (context, animatedRotation, _) {
            return MarkerLayer(
              markers: [
                Marker(
                  rotate: true,
                  width: 40.w,
                  height: 40.h,
                  point: animatedPoint,
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: animatedRotation,
                    alignment: Alignment.center,
                    child: AnimatedBuilder(
                      animation: blinkController,
                      builder: (context, child) {
                        return Container(
                          padding: const EdgeInsets.all(8.0).r,
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
                                spreadRadius:
                                    5.0 + (6.0 * blinkController.value),
                              ),
                            ],
                          ),
                          child: child,
                        );
                      },
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

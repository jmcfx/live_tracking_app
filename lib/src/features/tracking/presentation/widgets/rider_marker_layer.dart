import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';

class RiderMarkerLayer extends StatelessWidget {
  final LatLng animatedPoint;
  final double animatedRotation;
  final AnimationController blinkController;

  const RiderMarkerLayer({
    super.key,
    required this.animatedPoint,
    required this.animatedRotation,
    required this.blinkController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                        spreadRadius: 5.0 + (6.0 * blinkController.value),
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
  }
}

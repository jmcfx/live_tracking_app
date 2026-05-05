import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';
import 'package:live_tracking_app/src/core/config/app_map_config.dart';

class CustomMaps extends StatelessWidget {
  const CustomMaps({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FlutterMap(
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
              points: const [
                LatLng(39.3853, -77.3888),
                LatLng(39.2905, -77.2001),
                LatLng(39.1555, -77.1656),
                LatLng(39.1356, -76.9950),
                LatLng(38.9866, -76.7112),
                LatLng(38.9784, -76.922),
              ],
              strokeWidth: 7.w,
              color: theme.colorScheme.onPrimaryFixedVariant.withValues(
                alpha: 0.90,
              ),
              strokeCap: StrokeCap.round,
              borderStrokeWidth: 5,
              borderColor: theme.colorScheme.onSecondary.withValues(
                alpha: 0.25,
              ),
            ),
          ],
        ),
        MarkerLayer(
          alignment: Alignment.bottomCenter,
          rotate: true,
          markers: [
            Marker(
              width: 29.w,
              height: 29.h,
              point: const LatLng(39.3853, -77.3888),
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(AppIcons.marker),
            ),

            Marker(
              rotate: true,
              width: 40.w,
              height: 40.h,
              point: const LatLng(38.9784, -76.922),
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
                      color: theme.colorScheme.onPrimaryFixedVariant.withValues(
                        alpha: 0.3,
                      ),
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
          ],
        ),
      ],
    );
  }
}

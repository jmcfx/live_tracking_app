import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';
import 'package:live_tracking_app/src/features/shared/widgets/animated_floating_widget.dart';

class DestinationMarkerLayer extends StatelessWidget {
  final LatLng destinationPoint;

  const DestinationMarkerLayer({super.key, required this.destinationPoint});

  @override
  Widget build(BuildContext context) {
    return AnimatedFloatingWidget(
      floatOffset: -3.r,
      duration: const Duration(seconds: 1),
      child: MarkerLayer(
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
        ],
      ),
    );
  }
}

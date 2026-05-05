import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:live_tracking_app/src/features/tracking/presentation/widgets/courier_info_card.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/custom_maps.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/tracking_app_bar.dart';

class LiveTrackingPage extends StatelessWidget {
  const LiveTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // The Map
          CustomMaps(),
          Positioned(top: 0, left: 29.w, right: 0, child: TrackingAppBar()),
          Positioned(
            bottom: 19.h,
            left: 13.w,
            right: 13.w,
            child: CourierInfoCard(),
          ),
        ],
      ),
    );
  }
}

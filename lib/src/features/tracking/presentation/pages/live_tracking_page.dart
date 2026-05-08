import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:live_tracking_app/src/features/tracking/presentation/notifiers/tracking_notifier.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/courier_info_card.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/custom_maps.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/widgets/tracking_app_bar.dart';

class LiveTrackingPage extends ConsumerStatefulWidget {
  const LiveTrackingPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LiveTrackingPageState();
}

class _LiveTrackingPageState extends ConsumerState<LiveTrackingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(trackingProvider.notifier).startTracking();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(trackingProvider);
    return Scaffold(
      body: Stack(
        children: [
          if (state.riderLocation != null) const CustomMaps(),
          Positioned(
            top: 0,
            left: 29.w,
            right: 0,
            child: const TrackingAppBar(),
          ),

          Positioned(
            bottom: 19.h,
            left: 13.w,
            right: 13.w,
            child: const CourierInfoCard(),
          ),
          if (state.viewState.isLoading || state.riderLocation == null)
            const Center(child: CircularProgressIndicator.adaptive()),
        ],
      ),
    );
  }
}

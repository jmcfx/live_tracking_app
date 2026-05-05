import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_tracking_app/src/app/theme/app_theme.dart';
import 'package:live_tracking_app/src/features/tracking/presentation/pages/live_tracking_page.dart';

class LiveTrackingApp extends StatelessWidget {
  const LiveTrackingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            title: 'Live Tracking App',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            home: const LiveTrackingPage(),
          );
        },
      ),
    );
  }
}

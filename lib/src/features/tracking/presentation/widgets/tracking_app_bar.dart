import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';

class TrackingAppBar extends StatelessWidget {
  const TrackingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Row(
        spacing: 77.w,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).maybePop(),
            child: Container(
              clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.symmetric(
                horizontal: 15.40.w,
                vertical: 11.25.h,
              ).r,
              alignment: AlignmentGeometry.center,

              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: theme.textTheme.bodyMedium!.color!.withValues(
                      alpha: 0.1,
                    ),
                    blurRadius: 10,
                    spreadRadius: 5,

                    offset: const Offset(0, 0),
                  ),
                ],
                color: theme.scaffoldBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                AppIcons.arrow,
                width: 9.w,
                height: 17.5.h,
              ),
            ),
          ),

          Text('Live Tracking', style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}

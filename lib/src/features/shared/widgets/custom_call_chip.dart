import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_tracking_app/src/core/constants/app_icons.dart';
import 'package:live_tracking_app/src/features/shared/widgets/animated_floating_widget.dart';

class CustomCallChip extends StatelessWidget {
  const CustomCallChip({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedFloatingWidget(
      duration: Duration(seconds: 6),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimaryFixed,
          borderRadius: BorderRadius.circular(50.r),
          boxShadow: [
            BoxShadow(
              color: theme.textTheme.bodyMedium!.color!.withValues(alpha: 0.08),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 7.w,
          children: [
            CircleAvatar(
              radius: 12.r,
              backgroundColor: theme.colorScheme.surface,
              child: SvgPicture.asset(
                AppIcons.phone,
                height: 14.h,
                width: 14.w,
              ),
            ),

            Text(
              text,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 14.sp,
                color: theme.colorScheme.surface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

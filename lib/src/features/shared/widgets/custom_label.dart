import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:live_tracking_app/src/features/shared/widgets/custom_dot.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.5.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.06),

        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Row(
        spacing: 5.w,
        children: [
          CustomDot(),
          Text(
            text,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onPrimary,
              height: 16 / 12,
            ),
          ),
        ],
      ),
    );
  }
}

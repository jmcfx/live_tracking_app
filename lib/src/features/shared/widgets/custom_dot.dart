import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 5.h,
      width: 5.w,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        shape: BoxShape.circle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:live_tracking_app/src/app/theme/app_colors.dart';
import 'package:live_tracking_app/src/app/theme/app_text_style.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    textTheme: _lightTextTheme,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.surface100,
    colorScheme: ColorScheme.light(
      primary: AppColors.neutral900,
      secondary: AppColors.neutral300,
      surface: AppColors.surface100,
      onSecondaryContainer: AppColors.neutral100,
      onPrimaryFixed: AppColors.primary100,
      onPrimary: AppColors.primary50,
      onPrimaryFixedVariant: AppColors.primary200,
      onSecondary: AppColors.accent100,
    ),
  );

  ///Light Text Theme.....
  static final TextTheme _lightTextTheme = TextTheme(
    titleSmall: AppTextStyle.regular_12.copyWith(
      color: AppColors.neutral600.withValues(alpha: 0.9),
    ),
    bodySmall: AppTextStyle.regular_12.copyWith(color: AppColors.neutral300),
    bodyMedium: AppTextStyle.medium_16.copyWith(color: AppColors.neutral600),
    bodyLarge: AppTextStyle.semiBold_20.copyWith(color: AppColors.neutral600),
  );
}

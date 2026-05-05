import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle regular_12 = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle medium_16 = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle semiBold_20 = GoogleFonts.inter(
    fontSize: 20.sp,
    height: 1.4,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4.w,
  );
}

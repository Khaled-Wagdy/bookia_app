import 'package:bookia_store/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottom extends StatelessWidget {
  const AppBottom({super.key, required this.text, this.BackgroundColor});
  final String text;
  final Color? BackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 19.h),
      decoration: BoxDecoration(
        border: BackgroundColor == null
            ? null
            : Border.all(color: Colors.black, width: 1.5),

        color: BackgroundColor ?? AppColors.primary,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: BackgroundColor == Colors.white
                ? Colors.black
                : Colors.white,
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}

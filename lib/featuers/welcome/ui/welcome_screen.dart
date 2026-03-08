import 'package:bookia_store/core/app_bottom.dart';
import 'package:bookia_store/featuers/auth/ui/login_screen.dart';
import 'package:bookia_store/gen/assets.gen.dart';
import 'package:bookia_store/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.image.welcomeScreen.image().image,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 135.h),
            Assets.image.splashScreen.image(),
            SizedBox(height: 20.h),
            Expanded(
              child: Text(
                LocaleKeys.OrderNow.tr(),
                style: TextStyle(fontFamily: "Dm", fontSize: 20.sp),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: AppBottom(text: LocaleKeys.login),
            ),
            SizedBox(height: 20.h),
            AppBottom(
              text: LocaleKeys.Register,
              BackgroundColor: Color(0xFFFFFFFF),
            ),
            SizedBox(height: 75.h),
          ],
        ),
      ),
    );
  }
}

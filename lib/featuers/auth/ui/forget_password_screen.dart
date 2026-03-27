import 'package:bookia_store/core/app_bottom.dart';
import 'package:bookia_store/core/custom_back_bottom.dart';
import 'package:bookia_store/core/custom_text_form_field.dart';
import 'package:bookia_store/core/row_coustom.dart';
import 'package:bookia_store/core/theme/app_text_style.dart';
import 'package:bookia_store/featuers/auth/ui/login_screen.dart';
import 'package:bookia_store/gen/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const CustomBackBottom(),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: AppTextStyle.hintTextStyle,
              ),
              SizedBox(height: 40.h),
              CustomTextFormField(
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30.h),
              AppBottom(text: "Send code", onTap: () {}),
              SizedBox(height: 360.h),
              RowCoustom(
                text: "Remember Password? ",
                actionText: "Login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => const LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bookia_store/core/app_bottom.dart';
import 'package:bookia_store/core/custom_back_bottom.dart';
import 'package:bookia_store/core/custom_text_form_field.dart';
import 'package:bookia_store/core/row_coustom.dart';
import 'package:bookia_store/featuers/auth/ui/login_screen.dart';
import 'package:bookia_store/gen/locale_keys.g.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var UsernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  void dispose() {
    UsernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CustomBackBottom(),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                LocaleKeys.Hello.tr(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E232C),
                ),
              ),
              SizedBox(height: 40),
              CustomTextFormField(
                controller: UsernameController,
                hintText: "Username",
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 11.h),
              CustomTextFormField(
                controller: emailController,
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 11.h),
              CustomTextFormField(
                controller: passwordController,
                hintText: "Password",
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 11),
              CustomTextFormField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 30.h),
              AppBottom(
                text: LocaleKeys.Register.tr(),
                onTap: () async {
                  await Register();
                },
              ),

              SizedBox(height: 185.h),

              RowCoustom(
                text: "Already have an account? ",
                actionText: "Login Now",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => const LoginScreen()),
                  );
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Register() async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        'https://codingarabic.online/api/register',
        data: {
          'name': UsernameController.text,
          'email': emailController.text,
          'password': passwordController.text,
          'password_confirmation': confirmPasswordController.text,
        },
      );

      debugPrint(response.data.toString());
    } catch (e) {
      if (e is DioException) {
        debugPrint(e.response?.data.toString());
      } else {
        debugPrint(e.toString());
      }
    }
  }
}

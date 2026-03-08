import 'package:bookia_store/core/app_bottom.dart';
import 'package:bookia_store/core/custom_text_form_field.dart';
import 'package:bookia_store/featuers/auth/ui/register_screen.dart';
import 'package:bookia_store/featuers/auth/ui/widgets/social_bottom_login.dart';

import 'package:bookia_store/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                LocaleKeys.WelcomeBack.tr(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E232C),
                ),
              ),
              SizedBox(height: 40),
              CustomTextFormField(hintText: "Enter your email"),
              SizedBox(height: 20),
              CustomTextFormField(
                hintText: "Enter your password",
                suffixIcon: const Icon(
                  Icons.visibility_outlined,
                  color: Color(0xFF6A707C),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xFF6A707C)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              AppBottom(text: LocaleKeys.login.tr()),
              SizedBox(height: 44),
              Row(
                children: const [
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xFFE8ECF4)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or ",
                      style: TextStyle(
                        color: Color(0xFF6A707C),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xFFE8ECF4)),
                  ),
                ],
              ),
              SizedBox(height: 44),
              SocialLoginButton(
                onTap: () {},
                label: "Sign in with Google",
                imagePath: "assets/image/google_ic.png",
              ),
              SizedBox(height: 18),
              SocialLoginButton(
                onTap: () {},
                label: "Sign in with Apple",
                imagePath: "assets/image/cib_apple.png",
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color(0xFF24282C),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => RegisterScreen()),
                      );
                    },

                    child: Text(
                      " Register Now",
                      style: TextStyle(
                        color: Color(0xFFBFA054),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

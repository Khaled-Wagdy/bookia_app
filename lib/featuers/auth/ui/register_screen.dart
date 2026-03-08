import 'package:bookia_store/core/app_bottom.dart';
import 'package:bookia_store/core/custom_text_form_field.dart';
import 'package:bookia_store/featuers/auth/ui/login_screen.dart';
import 'package:bookia_store/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              LocaleKeys.Hello.tr(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E232C),
              ),
            ),
            SizedBox(height: 40),
            CustomTextFormField(hintText: "Username"),
            SizedBox(height: 11),
            CustomTextFormField(hintText: "Email"),
            SizedBox(height: 11),
            CustomTextFormField(hintText: "Password"),
            SizedBox(height: 11),
            CustomTextFormField(hintText: "Confirm Password"),
            SizedBox(height: 30),
            AppBottom(text: LocaleKeys.Register.tr()),
            SizedBox(height: 185),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
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
                        MaterialPageRoute(builder: (c) => LoginScreen()),
                      );
                    },

                    child: Text(
                      "Login Now ",
                      style: TextStyle(
                        color: Color(0xFFBFA054),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

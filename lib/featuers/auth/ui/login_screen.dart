import 'package:bookia_store/core/app_bottom.dart';
import 'package:bookia_store/core/custom_back_bottom.dart';
import 'package:bookia_store/core/custom_text_form_field.dart';
import 'package:bookia_store/core/routes/routes.dart';
import 'package:bookia_store/core/row_coustom.dart';
import 'package:bookia_store/featuers/auth/cubit/auth_cubit.dart';
import 'package:bookia_store/featuers/auth/ui/forget_password_screen.dart';
import 'package:bookia_store/featuers/auth/ui/widgets/social_bottom_login.dart';
import 'package:bookia_store/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                LocaleKeys.WelcomeBack.tr(),
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),

              SizedBox(height: 40.h),

              CustomTextFormField(
                controller: emailController,
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 20.h),

              CustomTextFormField(
                controller: passwordController,
                hintText: "Enter your password",
                obscureText: isObscure,
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Color(0xFF6A707C),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                isPassowrd: true,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => const ForgetPasswordScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xFF6A707C)),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthLoadingState) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) =>
                          Center(child: CircularProgressIndicator()),
                    );
                  } else if (state is AuthErrorState) {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Error"),
                        content: Text("Something went wrong, please try again"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("OK"),
                          ),
                        ],
                      ),
                    );
                  } else if (state is AuthSuccessState) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      Routes.BottomNavBarScreen,
                      (route) => false,
                    );
                  }
                },
                child: AppBottom(
                  text: LocaleKeys.login.tr(),
                  onTap: () {
                    context.read<AuthCubit>().login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  },
                ),
              ),

              SizedBox(height: 35.h),

              Row(
                children: const [
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xFFE8ECF4)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Login with",
                      style: TextStyle(color: Color(0xFF6A707C)),
                    ),
                  ),
                  Expanded(
                    child: Divider(thickness: 1, color: Color(0xFFE8ECF4)),
                  ),
                ],
              ),

              SizedBox(height: 25.h),

              SocialLoginButton(
                onTap: () {},
                label: "Sign in with Google",
                imagePath: "assets/image/google_ic.png",
              ),

              SizedBox(height: 15.h),

              SocialLoginButton(
                onTap: () {},
                label: "Sign in with Apple",
                imagePath: "assets/image/cib_apple.png",
              ),

              SizedBox(height: 100.h),

              RowCoustom(
                text: "Don't have an account? ",
                actionText: "Register Now",
                onTap: () {
                  Navigator.pushNamed(context, Routes.registerScreen);
                },
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bookia_store/core/app_bottom.dart';
import 'package:bookia_store/core/custom_back_bottom.dart';
import 'package:bookia_store/core/custom_text_form_field.dart';
import 'package:bookia_store/core/row_coustom.dart';
import 'package:bookia_store/core/routes/routes.dart';
import 'package:bookia_store/featuers/auth/cubit/auth_cubit.dart';
import 'package:bookia_store/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmationController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const CustomBackBottom(),
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
              SizedBox(height: 40.h),
              CustomTextFormField(
                controller: nameController,
                hintText: "Name",
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
              SizedBox(height: 11.h),
              CustomTextFormField(
                controller: passwordConfirmationController,
                hintText: "Confirm Password",
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 30.h),
              BlocListener<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthLoadingState) {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          Center(child: CircularProgressIndicator()),
                    );
                  } else if (state is AuthErrorState) {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Error"),
                        content: Text("Somehing Wrong Please try again"),
                      ),
                    );
                  } else if (state is AuthSuccessState) {
                    Navigator.pushReplacementNamed(context, Routes.loginScreen);
                  }
                },
                child: AppBottom(
                  text: LocaleKeys.Register.tr(),
                  onTap: () {
                    context.read<AuthCubit>().register(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      password_confirmation:
                          passwordConfirmationController.text,
                    );
                  },
                ),
              ),

              SizedBox(height: 185.h),
              RowCoustom(
                text: "Already have an account? ",
                actionText: "Login Now",
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.loginScreen,
                  ); // ✅ التعديل هنا
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

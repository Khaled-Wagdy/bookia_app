import 'package:bookia_store/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType,
    this.isPassowrd = false,
    this.obscureText = false,
    this.controller,
  });
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool isPassowrd;
  final bool obscureText;
  final TextEditingController?
  controller; // Variable to track password visibility

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapUpOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      keyboardType: keyboardType,
      obscureText: isPassowrd ? obscureText : false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyle.hintTextStyle,
        suffixIcon: isPassowrd ? suffixIcon : null,
        filled: true,
        fillColor: const Color(0xFFF7F8F9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
      ),
    );
  }
}

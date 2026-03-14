import 'package:flutter/material.dart';

class CustomBackBottom extends StatelessWidget {
  const CustomBackBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}

import 'package:bookia_store/featuers/home/widgets/home_app_bar.dart';
import 'package:bookia_store/featuers/home/widgets/home_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [HomeAppBar(), HomeSlider()]);
  }
}

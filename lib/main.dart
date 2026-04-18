import 'package:bookia_store/book_store.dart';
import 'package:bookia_store/core/helper/app_constant.dart';
import 'package:bookia_store/core/networking/dio_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  DioHelper.init();
  AppConstants.token = prefs.getString("token");

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),

      child: BookStore(),
    ),
  );
}

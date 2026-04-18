import 'package:bookia_store/core/helper/app_constant.dart';
import 'package:bookia_store/core/routes/app_router.dart';
import 'package:bookia_store/featuers/auth/cubit/auth_cubit.dart'; // استيراد الكيوبت
import 'package:bookia_store/featuers/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:bookia_store/featuers/welcome/ui/welcome_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // استيراد الـ Bloc
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        // ✅ التعديل الجوهري هنا: تغليف التطبيق بالكامل بالـ BlocProvider
        return BlocProvider(
          create: (context) =>
              AuthCubit(), // هنا يتم إنشاء الـ Cubit مرة واحدة لكل التطبيق
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: ThemeData(
              fontFamily: "Dm",
              scaffoldBackgroundColor: Colors.white,
            ),
            onGenerateRoute: AppRouter().onGenerateRoute,
            home: startScreen(),
          ),
        );
      },
    );
  }

  Widget startScreen() {
    if (AppConstants.token == null) {
      return const WelcomeScreen();
    } else {
      return const BottomNavBarScreen();
    }
  }
}

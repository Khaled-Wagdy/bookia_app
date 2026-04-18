import 'package:bookia_store/core/routes/routes.dart';
import 'package:bookia_store/featuers/auth/cubit/auth_cubit.dart';
import 'package:bookia_store/featuers/auth/ui/login_screen.dart';
import 'package:bookia_store/featuers/auth/ui/register_screen.dart';
import 'package:bookia_store/featuers/bottom_nav_bar/bottom_nav_bar_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: LoginScreen(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: RegisterScreen(),
          ),
        );
      case Routes.BottomNavBarScreen:
        return MaterialPageRoute(builder: (_) => BottomNavBarScreen());

      default:
        return null;
    }
  }
}

import 'package:bookia_store/core/routes/routes.dart';
import 'package:bookia_store/core/theme/app_colors.dart';
import 'package:bookia_store/featuers/Profile/ui/Profile_screen.dart';
import 'package:bookia_store/featuers/cart/ui/cart_screen.dart';
import 'package:bookia_store/featuers/home/cubit/cubit/home_cubit.dart';
import 'package:bookia_store/featuers/home/ui/home_screen.dart';
import 'package:bookia_store/featuers/wishlist/ui/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeIndex = 0;
  List<Widget> screens = [
    BlocProvider(
      create: (context) => HomeCubit()..getSlider(),

      child: HomeScreen(),
    ),
    WishListScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        showSelectedLabels: false,
        selectedItemColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "WishList",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: screens[activeIndex],
        ),
      ),
    );
  }
}

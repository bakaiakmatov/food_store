import 'package:flutter/material.dart';
import 'package:food_store_test/modules/category/presentation/screens/caregory_screen.dart';
import 'package:food_store_test/modules/main/main_screen.dart';

class AppRoutes {
  static const mainScreen = '/';
  static const categoryScreen = 'categoryScreen';
  static const subategoryScreen = 'subategoryScreen';
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const MainScreen(),
    categoryScreen: (context) => const CategoryScreen(),
    subategoryScreen: (context) => const MainScreen(),
  };
}

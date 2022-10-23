
import 'package:exam_five/screens/home/home_screen.dart';
import 'package:exam_five/utils/constants.dart';
import 'package:flutter/material.dart';


class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    
    }
    return null;
  }
}

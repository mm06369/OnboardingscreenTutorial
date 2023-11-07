import 'package:flutter/material.dart';
import 'package:todo_app/views/instruction/custom_paint_tutorial.dart';
import 'package:todo_app/views/instruction/instruction_page.dart';
import 'package:todo_app/views/instruction/onboarding_screen.dart';
import 'package:todo_app/views/login/login_page.dart';
import 'package:todo_app/views/login/splash.dart';
import '../no_found_page.dart';
import "route_name.dart";

class CustomRoutes {
  static Route<dynamic> allRoutes(RouteSettings setting) {
    switch (setting.name) {
      case instruction:
        return MaterialPageRoute(builder: (_) => InstructionPage());
      case splash:
        return MaterialPageRoute(builder: (_) => const Splash());
      case customPaint:
        return MaterialPageRoute(builder: (_) => const CustomPaintTutorial());
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => Onbording());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
    return MaterialPageRoute(builder: (_) => const NoFoundPage());
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app_ui/features/home/screens/home_screen.dart';
import 'package:travel_app_ui/features/onboarding/screens/onboarding_screen.dart';

class AppRoutes {
  static const String onboarding = "/";
  static const String home = "Home";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}

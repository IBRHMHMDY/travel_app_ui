import 'package:flutter/material.dart';
import 'package:travel_app_ui/routes/app_routes.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel App",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboarding,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}

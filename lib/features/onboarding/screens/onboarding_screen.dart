import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/dummy/onboarding_data.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: onboarding.length,
            itemBuilder: (context,index) {
              return Image.asset(onboarding[index].image);
            },
          ),
        ],
      ),
    );
  }
}

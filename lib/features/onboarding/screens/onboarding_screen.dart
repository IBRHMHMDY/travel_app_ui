import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/dummy/onboarding_data.dart';
import 'package:travel_app_ui/features/onboarding/widgets/getstarted_button.dart';
import 'package:travel_app_ui/features/onboarding/widgets/skip_button.dart';
import 'package:travel_app_ui/features/onboarding/widgets/sliders_info.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int selectedIndex = 0;


  Widget dotIndicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: EdgeInsets.only(right: 6),
      width: 30,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: index == selectedIndex ? Colors.white : Colors.white54,
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    final int lastIndex = onboarding.length - 1;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: onboarding.length,
              onPageChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  onboarding[index].image,
                  cacheWidth: MediaQuery.of(context).size.width.toInt(),
                  cacheHeight: MediaQuery.of(context).size.height.toInt(),
                  fit: BoxFit.cover,
                );
              },
            ),
            ?lastIndex != selectedIndex
                ? SkipButton(selectedIndex: selectedIndex)
                : null,
            SlidersInfo(selectedIndex: selectedIndex),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onboarding.length,
                            dotIndicator,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ?lastIndex == selectedIndex ? GetStartedButton() : null,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

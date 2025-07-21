
import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/dummy/onboarding_data.dart';
import 'package:travel_app_ui/routes/app_routes.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, AppRoutes.home),
          child: Visibility(
            visible: onboarding.length != selectedIndex ? true : false,
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

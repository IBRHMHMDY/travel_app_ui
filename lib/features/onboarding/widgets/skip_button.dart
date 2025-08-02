import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/dummy/onboarding_data.dart';
import 'package:travel_app_ui/routes/app_routes.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.selectedIndex});


  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, AppRoutes.home),
          child: Visibility(
            visible: onboarding.length != selectedIndex ? true : false,
            child: Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black45,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 7,
                    spreadRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
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


import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/dummy/onboarding_data.dart';

class SlidersInfo extends StatelessWidget {
  const SlidersInfo({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
      child: Column(
        children: [
          Text(
            onboarding[selectedIndex].title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 60,
              letterSpacing: -2.8,
              shadows: [
                Shadow(
                  offset: Offset(0, 1), // اتجاه الظل (يمين، أسفل)
                  blurRadius: 4.0, // درجة النعومة
                  color: Colors.black45, // لون الظل
                ),
              ],
              height: 1.2,
            ),
          ),
          SizedBox(height: 15),
          Text(
            onboarding[selectedIndex].subTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              shadows: [
                Shadow(
                  offset: Offset(0, 2), // اتجاه الظل (يمين، أسفل)
                  blurRadius: 4.0, // درجة النعومة
                  color: Colors.black26, // لون الظل
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

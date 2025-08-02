import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/constants/colors.dart';
import 'package:travel_app_ui/data/dummy/places_data.dart';
import 'package:travel_app_ui/data/models/tourist_place.dart';
import 'package:travel_app_ui/features/detail/screens/detail_screen.dart';
import 'package:travel_app_ui/features/home/widgets/popular_places.dart';
import 'package:travel_app_ui/features/home/widgets/recommendations_places.dart';
import 'package:travel_app_ui/shared/widgets/bottom_bar.dart';
import 'package:travel_app_ui/shared/widgets/header_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TouristPlace> popular = touristPlaces
      .where((element) => element.category == "Popular")
      .toList();
  List<TouristPlace> recommendation = touristPlaces
      .where((element) => element.category == "Recommendations")
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.location_on_outlined, color: Colors.black, size: 30),
                SizedBox(width: 5),
                Text("Jawa Timur"),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 30),
              ],
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.notifications_none, size: 25),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Popular
          Column(
            children: [
              HeaderSection(title: "Popular Places", goPage: () {}),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popular.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                DetailScreen(selectedPlace: popular[index]),
                          ),
                        ),
                        child: PopularPlaces(destination: popular[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Recommendations
          HeaderSection(title: "Recommendations for you", goPage: () {}),
          Expanded(
            child: ListView.builder(
              itemCount: recommendation.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          DetailScreen(selectedPlace: recommendation[index]),
                    ),
                  ),
                  child: RecommendationsPlaces(
                    destination: recommendation[index],
                  ),
                ),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: BottomBar()),
        ],
      ),
    );
  }
}

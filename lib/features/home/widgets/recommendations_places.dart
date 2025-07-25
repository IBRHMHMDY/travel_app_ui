import 'package:flutter/material.dart';
import 'package:travel_app_ui/data/models/tourist_place.dart';

class RecommendationsPlaces extends StatelessWidget {
  final TouristPlace destination;
  const RecommendationsPlaces({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300, // لون ناعم وشفاف
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 4), // يتحرك لأسفل قليلاً
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(destination.imageUrl).image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(destination.name),
                  Text(destination.price.toString()),
                  Text(destination.location),
                  Text(destination.rating.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300, // لون ناعم وشفاف
              spreadRadius: 4,
              blurRadius: 15,
              offset: Offset(0, 4), // يتحرك لأسفل قليلاً
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 130,
              width: 140,
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
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 14,
                            color: Colors.black,
                          ),
                          SizedBox(width: 5),
                          Text(
                            destination.location,
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 14,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "(${destination.reviews.toString()} Reviews)",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "\$${destination.price.toString()}",
                              style: TextStyle(
                                color: Colors.blue.shade600,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: "/Person",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/constants/colors.dart';
import 'package:travel_app_ui/data/models/tourist_place.dart';

class DetailScreen extends StatefulWidget {
  final TouristPlace selectedPlace;
  const DetailScreen({super.key, required this.selectedPlace});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.primary);
  }
}

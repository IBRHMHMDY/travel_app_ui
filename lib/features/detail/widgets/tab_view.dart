
import 'package:flutter/material.dart';
import 'package:travel_app_ui/features/detail/screens/detail_screen.dart';

class TabView extends StatelessWidget {
  const TabView({
    super.key,
    required TabController tabController,
    required this.widget,
  }) : _tabController = tabController;

  final TabController _tabController;
  final DetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(widget.selectedPlace.description),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(child: Text("Reviews")),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../elements/homescreen_hot_destinations.dart';
import '../elements/homescreen_stories.dart';

class HomeScreenBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HotDestinations(),
          // SizedBox(
          //   height: ((MediaQuery.of(context).size.height -
          //           MediaQuery.of(context).padding.top) *
          //       0.005),
          // ),
          HomeScreenReviews(),
        ],
      ),
    );
  }
}

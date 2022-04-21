import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/location.dart';
import 'package:travel_app/provider/location_provider.dart';

import '../widgets/homescreen_stories_card.dart';
import '../provider/destination.dart';
import '../provider/destination_provider.dart';

class HomeScreenReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Destination> dests = Provider.of<DestinationProvider>(context).items;
    List<Location> locations = Provider.of<LocationProvider>(context).items;
    List<String> reviews = [];
    locations.forEach(
      (element) {
        element.reviews.forEach((element) {
          if (element.length != 0) {
            reviews.add(element);
          }
        });
      },
    );

    return Container(
      height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.5,
      width: MediaQuery.of(context).size.width * 0.98,
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.05,
            width: MediaQuery.of(context).size.width * 0.95,
            alignment: Alignment.centerLeft,
            child: Text(
              'Top Reviews',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.01,
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.4,
            //10,

            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(horizontal: 5),
            width: MediaQuery.of(context).size.width * 0.98,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              primary: true,
              //dragStartBehavior: ,
              itemBuilder: ((context, index) {
                return ReviewsCard(reviews[index]);
              }),
              separatorBuilder: (ctx, index) => const Divider(
                thickness: 1,
              ),
              itemCount: 10, //reviews.length,
              //scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
    );
  }
}

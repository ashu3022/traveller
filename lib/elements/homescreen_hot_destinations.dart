import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/hot_destination_provider.dart';

import '../widgets/homescreen_hotdestination_card.dart';
import '../provider/destination.dart';

class HotDestinations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Destination> dests =
        Provider.of<HotDestinationProvider>(context).items;
    return Container(
      height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.37,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.05,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Destinations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See All>',
                  style: TextStyle(
                    color: Color(0xFF3F4168),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.32,
            width: MediaQuery.of(context).size.width * 0.98,
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return HotDestinationCard(dests[index]);
              }),
              separatorBuilder: (ctx, index) => const SizedBox(
                width: 5,
              ),
              itemCount: dests.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

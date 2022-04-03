import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/widgets/homescreen_stories_card.dart';

import '../provider/hot_destination_provider.dart';
import '../provider/destination.dart';

class HomeScreenStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Destination> dests =
        Provider.of<HotDestinationProvider>(context).items;
    return Container(
      height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.17,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.05,
            width: MediaQuery.of(context).size.width * 0.95,
            alignment: Alignment.centerLeft,
            child: Text(
              'Top Stories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.02,
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.1,
            //10,
            padding: EdgeInsets.only(left: 15),
            //width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return StoriesCard(dests[index].imgUrl);
              }),
              separatorBuilder: (ctx, index) => const SizedBox(
                width: 15,
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

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/destination.dart';
import '../provider/destination_provider.dart';
import '../widgets/destination_card.dart';
import '../widgets/location_card.dart';

class SeeAllLocation extends StatelessWidget {
  static const routeName = '/see-all-location';

  @override
  Widget build(BuildContext context) {
    final Destination d =
        ModalRoute.of(context)!.settings.arguments as Destination;
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Color(0xFF5E5E5E),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: MediaQuery.of(context).size.width * 0.32,
          height: AppBar().preferredSize.height * 0.9,
          alignment: Alignment.centerLeft,
          child: FittedBox(
            child: Text(
              'Locations',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    AppBar().preferredSize.height) *
                0.01,
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    AppBar().preferredSize.height) *
                0.94,
            width: MediaQuery.of(context).size.width * 0.98,
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return LocationCard(d.subLocations[index], d);
              }),
              separatorBuilder: (ctx, index) => const SizedBox(
                width: 5,
              ),
              itemCount: d.subLocations.length,
              //scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

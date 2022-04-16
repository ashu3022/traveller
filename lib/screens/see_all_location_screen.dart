import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/location.dart';
import 'package:travel_app/provider/location_provider.dart';

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
    final List<Location> l =
        Provider.of<LocationProvider>(context).fetchLocations(d);
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    AppBar().preferredSize.height) *
                0.01,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    AppBar().preferredSize.height) *
                0.94,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.98,
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return LocationCard(l[index], d);
                //oi vismay pubspec upgrade kr de ek baar
              }),
              separatorBuilder: (ctx, index) => const SizedBox(
                width: 5,
              ),
              itemCount: l.length,
              //scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

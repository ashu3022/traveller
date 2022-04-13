import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/destination.dart';
import '../widgets/destination_details_screen_location_card.dart';
import '../screens/see_all_location_screen.dart';
import '../provider/location.dart';

class LocationDetailsScreenBottom extends StatelessWidget {
  final Location l;
  LocationDetailsScreenBottom(this.l);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      height:
          (MediaQuery.of(context).size.height + AppBar().preferredSize.height) *
              0.72,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.07,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                l.description,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/screens/location_details_screen.dart';

import '../provider/location.dart';
import '../provider/destination.dart';
import '../screens/destination_details_screen.dart';

class PlannedtripLocationCard extends StatelessWidget {
  final Location l;
  final Destination d;
  PlannedtripLocationCard(this.l, this.d);

  @override
  Widget build(BuildContext context) {
    final cardHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) *
        0.25;
    final cardWidth = MediaQuery.of(context).size.width * 0.36;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(LocationDetailsScreen.routeName,
            arguments: {'location': l, 'destination': d});
      },
      child: Container(
        height: cardHeight,
        width: cardWidth,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: cardHeight * 0.75,
              child: Image.network(
                l.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                height: cardHeight * 0.15,
                child: Card(
                  elevation: 1,
                  child: Container(
                    //alignment: Alignment.centerLeft,
                    //padding: EdgeInsets.all(8),
                    height: cardHeight * 0.15,
                    padding: EdgeInsets.all(2),
                    width: cardWidth,
                    child: FittedBox(
                      alignment: Alignment.center,
                      child: Text(
                        l.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

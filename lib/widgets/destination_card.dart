import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/screens/destination_details_screen.dart';

import '../elements/hotel_card_image.dart';
import '../models/hotel.dart';
import '../provider/destination_provider.dart';
import '../provider/destination.dart';
import '../elements/destination_card_image.dart';
import '../provider/destination.dart';

class DestinationCard extends StatelessWidget {
  final Destination d;
  DestinationCard(this.d);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DestinationDetailsScreen.routeName, arguments: d);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          //color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height * 0.27,
        width: MediaQuery.of(context).size.width * 0.98,
        child: Column(
          children: [
            DestinationCardImage(d),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.blue,
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 23,
                    width: MediaQuery.of(context).size.width * 0.7,
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Text(
                        d.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          //height: 0.5,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

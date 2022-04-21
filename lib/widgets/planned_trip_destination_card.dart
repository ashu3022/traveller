import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/screens/destination_details_screen.dart';

import '../elements/hotel_card_image.dart';
import '../models/hotel.dart';
import '../provider/destination_provider.dart';
import '../provider/destination.dart';
import '../elements/destination_card_image.dart';
import '../provider/destination.dart';

class PlannedTripDestinationCard extends StatelessWidget {
  final Destination d;
  PlannedTripDestinationCard(this.d);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            //color: Colors.white,
          ),

          //padding: EdgeInsets.all(3),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.95,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                      DestinationDetailsScreen.routeName,
                      arguments: d);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: (MediaQuery.of(context).size.width * 0.95) * 0.34,
                  child: Image.network(
                    d.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: (MediaQuery.of(context).size.width * 0.95) * 0.66,
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2 * 0.015,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: (MediaQuery.of(context).size.width * 0.95) * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2 * 0.23,
                      alignment: Alignment.centerLeft,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          d.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: (MediaQuery.of(context).size.width * 0.95) * 0.64,
                      height: MediaQuery.of(context).size.height * 0.2 * 0.7,
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                        child: Text(
                          d.description,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 136, 136, 136),
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0375,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

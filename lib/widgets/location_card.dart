import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/location.dart';
import '../elements/location_card_image.dart';
import '../provider/destination.dart';

class LocationCard extends StatelessWidget {
  final Destination d;
  final Location l;
  LocationCard(this.l, this.d);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        //color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Column(
        children: [
          LocationCardImage(l),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 23,
            width: MediaQuery.of(context).size.width * 0.9,
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                FittedBox(
                  child: Text(
                    l.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      //height: 0.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 15,
            width: MediaQuery.of(context).size.width * 0.9,
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                FittedBox(
                  child: Text(
                    d.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Color.fromARGB(255, 147, 146, 146)),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

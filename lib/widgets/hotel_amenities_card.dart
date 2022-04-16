import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../models/Amenities.dart';
import '../screens/destination_details_screen.dart';
import '../elements/hotel_card_image.dart';
import '../models/hotel.dart';
import '../provider/destination_provider.dart';
import '../provider/destination.dart';
import '../elements/destination_card_image.dart';
import '../provider/destination.dart';

class HotelAmenitiesCard extends StatelessWidget {
  final Amenities a;

  HotelAmenitiesCard(this.a);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          //color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.35,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: SvgPicture.asset(
                a.imgUrl,
                //color: Colors.blueAccent,
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width * 0.35,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.32),
                child: Text(
                  a.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue,
                    //height: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

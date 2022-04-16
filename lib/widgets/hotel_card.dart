import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/hotel_description_screen.dart';
import '../elements/hotel_card_image.dart';
import '../models/hotel.dart';

class HotelCard extends StatelessWidget {
  final Hotel h;
  HotelCard(this.h);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HotelDetailsScreen.routeName, arguments: h);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          //color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.98,
        child: Column(
          children: [
            HotelCardImage(h),
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
                      h.name,
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
                      h.address,
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
      ),
    );
  }
}

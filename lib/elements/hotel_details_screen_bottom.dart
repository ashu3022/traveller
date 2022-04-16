import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/widgets/hotel_amenities_card.dart';

import '../models/hotel.dart';
import '../provider/destination.dart';
import '../models/Amenities.dart';
import '../widgets/destination_details_screen_location_card.dart';
import '../screens/see_all_location_screen.dart';
import '../provider/location.dart';

class HotelDetailsScreenBottom extends StatelessWidget {
  List<Amenities> a = [
    Amenities(
      imgUrl: 'assets/icons/parking-svgrepo-com.svg',
      name: 'Parking',
    ),
    Amenities(
      imgUrl: 'assets/icons/wifi-signal-svgrepo-com.svg',
      name: 'Free Wifi',
    ),
    Amenities(
      imgUrl: 'assets/icons/room-service-svgrepo-com.svg',
      name: 'Room Service',
    ),
    Amenities(
      imgUrl: 'assets/icons/toiletries-svgrepo-com.svg',
      name: 'Complimentary Toiletries',
    ),
    Amenities(
      imgUrl: 'assets/icons/breakfast-sandwich-svgrepo-com.svg',
      name: 'Free Breakfast',
    ),
    Amenities(
      imgUrl: 'assets/icons/laundry-svgrepo-com.svg',
      name: 'Laundry Services',
    ),
    Amenities(
      imgUrl: 'assets/icons/spa-svgrepo-com.svg',
      name: 'Spa & Wellness Amenities',
    ),
    Amenities(
      imgUrl: 'assets/icons/gym-svgrepo-com.svg',
      name: 'Exercise Facilities and Accessories',
    ),
    Amenities(
      imgUrl: 'assets/icons/newspaper-svgrepo-com.svg',
      name: 'Daily Newspaper',
    ),
    Amenities(
      imgUrl: 'assets/icons/tv-svgrepo-com.svg',
      name: 'Entertainment',
    ),
  ];

  final Hotel h;
  HotelDetailsScreenBottom(this.h);
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
                h.description,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.015,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                'Amenities',
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
              height: MediaQuery.of(context).size.height * 0.2 + 4,
              width: MediaQuery.of(context).size.width * 0.98,
              alignment: Alignment.center,
              child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return HotelAmenitiesCard(a[index]);
                },
                separatorBuilder: (ctx, index) => SizedBox(
                  width: 10,
                ),
                itemCount: a.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

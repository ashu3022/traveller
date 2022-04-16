import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/hotel.dart';
import '../elements/hotel_details_screen_bottom.dart';
import '../models/Amenities.dart';
import '../elements/hotel_details_screen_top_image.dart';

class HotelDetailsBelowScreen extends StatelessWidget {
  //static const routeName = '/location-details-screen';
  //final Destination dest;

  final Hotel h;
  HotelDetailsBelowScreen(this.h);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height +
              AppBar().preferredSize.height,
          width: MediaQuery.of(context).size.width,
        ),
        HotelDetailStackImage(h),
        Positioned(
          top: (MediaQuery.of(context).size.height +
                  AppBar().preferredSize.height) *
              0.28,
          child: HotelDetailsScreenBottom(h),
        ),
      ],
    );
  }
}

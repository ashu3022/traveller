import 'package:flutter/material.dart';
import 'package:travel_app/elements/flight_booking_bottom.dart';
import 'package:travel_app/elements/flight_booking_top_Image.dart';
import 'package:travel_app/screens/flights.dart';

class DetailsReqd extends StatelessWidget {
  static const routename = '/details-reqd';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Flights'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height +
                AppBar().preferredSize.height,
            width: MediaQuery.of(context).size.width,
          ),
          FlightBookingStackImage(),
          Positioned(
            top: (MediaQuery.of(context).size.height +
                    AppBar().preferredSize.height) *
                0.28,
            child: FlightBookingScreenBottom(),
          ),
        ],
      ),
    );
  }
}

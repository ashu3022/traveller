import 'package:flutter/material.dart';

import '../provider/destination.dart';

class FlightBookingStackImage extends StatelessWidget {
  

  FlightBookingStackImage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height) * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            "https://img.freepik.com/free-photo/sunset-sky-airplane-plane-window-seat-paris-france-europe-travel-business-trip_74324-324.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
              0.3,
          child: Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.35,
            width: MediaQuery.of(context).size.width * 0.8,
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.035,
                  width: MediaQuery.of(context).size.width * 0.6,
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    child: Text(
                      'Flight Booking',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.13,
                        height: 0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

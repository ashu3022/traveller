import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/Amenities.dart';

import '../models/hotel.dart';
import '../elements/hotel_details_below.dart';

class HotelDetailsScreen extends StatefulWidget {
  static const routeName = '/hotel-details-screen';

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  //final Destination dest;
  @override
  Widget build(BuildContext context) {
    final Hotel h = ModalRoute.of(context)!.settings.arguments as Hotel;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height +
                AppBar().preferredSize.height,
            width: MediaQuery.of(context).size.width,
          ),
          HotelDetailsBelowScreen(h),
          Positioned(
            bottom: 12,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.072,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      'Add To Trip',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height +
                    AppBar().preferredSize.height) *
                0.24,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height +
                      AppBar().preferredSize.height) *
                  0.09,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: (MediaQuery.of(context).size.height +
                            AppBar().preferredSize.height) *
                        0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(3, 2),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.05),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: ((MediaQuery.of(context).size.height +
                                      AppBar().preferredSize.height) *
                                  0.07) *
                              0.5,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              h.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.08,
                                height: 0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 10,
                          ),
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: ((MediaQuery.of(context).size.height +
                                      AppBar().preferredSize.height) *
                                  0.07) *
                              0.3,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.blue,
                                size: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: ((MediaQuery.of(context).size.height +
                                            AppBar().preferredSize.height) *
                                        0.07) *
                                    0.3,
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    h.destination,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 132, 132, 132),
                                      //height: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    (MediaQuery.of(context).size.width * 0.55) *
                                        0.1,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              ),
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  '${h.rating}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 132, 132, 132),
                                    //height: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: (MediaQuery.of(context).size.height +
                            AppBar().preferredSize.height) *
                        0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(3, 2),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.05),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: Colors.blue,
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: ((MediaQuery.of(context).size.height +
                                      AppBar().preferredSize.height) *
                                  0.07) *
                              0.5,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              '₹${h.price}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,

                                //height: 0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: ((MediaQuery.of(context).size.height +
                                      AppBar().preferredSize.height) *
                                  0.07) *
                              0.5,
                          child: Text(
                            '/Day',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 132, 132, 132),
                              //height: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/screens/enter_fdetails.dart';
import 'package:travel_app/screens/flights.dart';
import 'package:travel_app/screens/trains.dart';

import '../provider/destination.dart';
import '../widgets/destination_details_screen_location_card.dart';
import '../screens/see_all_location_screen.dart';
import '../provider/location.dart';
import '../provider/location_provider.dart';
import '../widgets/destination_detail_button_card.dart';
import 'package:readmore/readmore.dart';
import '../screens/hotel_list_screen.dart';

class FlightBookingScreenBottom extends StatelessWidget {
  // TextEditingController fromEditor = TextEditingController();
  // TextEditingController toEditor = TextEditingController();
  // TextEditingController dateEditor = TextEditingController();

  //final Destination dest;
  //FlightBookingScreenBottom();
  @override
  Widget build(BuildContext context) {
    String from = "";
    String to = "";
    String date = "";
    String seats = "1";
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      height:
          (MediaQuery.of(context).size.height + AppBar().preferredSize.height) *
              0.65,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.015,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 25,
                  child: Text(
                    'From',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: TextField(
                    //controller: fromEditor,
                    onSubmitted: (value) {
                      from = value;
                      print(from);
                    },
                    decoration: InputDecoration(
                      hintText: "Source Location",
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Color.fromARGB(255, 61, 63, 104),
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_pin),
                      // suffixIcon: IconButton(
                      //     icon: Icon(Icons.search), onPressed: () {}),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 25,
                  child: Text(
                    'To',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: TextField(
                    //controller: toEditor,
                    onChanged: (text) {
                      to = text;
                    },
                    decoration: InputDecoration(
                      hintText: "Destination",
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Color.fromARGB(255, 61, 63, 104),
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_pin),
                      // suffixIcon: IconButton(
                      //     icon: Icon(Icons.search), onPressed: () {}),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 25,
                  child: Text(
                    "Departure Date",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: TextField(
                    //controller: dateEditor,
                    onChanged: (text) {
                      date = text;
                    },
                    decoration: InputDecoration(
                      hintText: "Departure Date",
                      hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Color.fromARGB(255, 61, 63, 104),
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.airplanemode_active),
                      // suffixIcon: IconButton(
                      //     icon: Icon(Icons.search), onPressed: () {}),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('from' + from);
                    print(date);
                    print(to);
                    Navigator.of(context).pushNamed(Flight.routeName,
                        arguments: {
                          "from": 'delhi',
                          "to": 'guwahati',
                          "date": '2022-05-10',
                          "seats": seats
                        });
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 60,
                    height: 25,
                    child: Text('Submit'),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/screens/TabsScreen.dart';
import 'package:travel_app/screens/login.dart';
import 'package:travel_app/screens/register.dart';
import './homescreen.dart';

class Sliderpage extends StatefulWidget {
  const Sliderpage({Key? key}) : super(key: key);

  @override
  State<Sliderpage> createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  // get the destination of bhopal passed over here
  String? SelectedDest = "Quick";
  List images = [
    "slider22.png",
    "travel-concept-with-baggage.jpg",
    "slider33.png"
  ];
  List head = ["Plan ", "Travel", "Stay"];
  List head1 = [
    "Select Locations",
    "Select Transportation",
    "Select Accomadations"
  ];
  List head2 = [
    "Select all the places you wanna visit on reaching your destination and add them to your plan",
    "Select suitable mode of travel from either of flights,trains or buses along with date and price",
    "Select suitable budget friendly hotels,resorts,homestay according to travel dates "
  ];

  List buttontext = ["Add locations", "Add flights", "Add hotels"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: ((_, index) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/" + images[index]))),
          child: Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            head[index],
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Text(
                            head1[index],
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.8)),
                          ),
                          SizedBox(height: 14),
                          Text(head2[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black.withOpacity(0.8))),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Column(
                        children: List.generate(3, (indexDots) {
                      return Container(
                        width: 8,
                        margin: EdgeInsets.only(bottom: 2),
                        height: indexDots == index ? 28 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: indexDots == index
                              ? Colors.blue
                              : Color.fromARGB(255, 178, 211, 235),
                        ),
                      );
                    }))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                ),
                index == 2
                    ? Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue, // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .popAndPushNamed(SignInScreen.routeName);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: Text(
                                "Lets go!",
                              ),
                            )),
                      )
                    : Text(""),
              ],
            ),
          ),
        );
      }),
    ));
  }
}

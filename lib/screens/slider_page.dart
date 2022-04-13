import 'dart:ui';

import 'package:flutter/material.dart';
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
    "blue-ridge-mountains-landscape.jpg",
    "blue-ridge-mountains-landscape.jpg",
    "blue-ridge-mountains-landscape.jpg"
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
                                color: Color.fromARGB(255, 83, 37, 105),
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Text(
                            head1[index],
                            style: TextStyle(
                                color: Color.fromARGB(255, 83, 37, 105)),
                          ),
                          SizedBox(height: 14),
                          Text(head2[index],
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black45)),
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
                              ? Color.fromARGB(255, 127, 82, 149)
                              : Color.fromARGB(255, 214, 178, 235),
                        ),
                      );
                    }))
                  ],
                ),
                SizedBox(
                  height: 240,
                ),
                index == 2
                    ? Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      255, 75, 35, 103), // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  Navigator.of(context)
                                      .popAndPushNamed(Homescreen.routeName);
                                },
                                child: Text(
                                  "LOGIN IN",
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(
                                    255, 75, 35, 103), // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () {},
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
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

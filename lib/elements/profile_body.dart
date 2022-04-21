import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';
import 'package:travel_app/screens/myAccount.dart';
import 'package:travel_app/screens/planned_trip.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 50),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),)*/
            },
          ),
          ProfileMenu(
              text: "Planned Trips",
              icon: "assets/icons/Discover.svg",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlannedTrip()));
              }),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

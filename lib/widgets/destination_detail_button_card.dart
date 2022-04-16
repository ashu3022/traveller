import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/provider/destination.dart';

class ButtonCard extends StatelessWidget {
  final String imgUrl;
  final String routeName;
  final Destination d;
  final String name;
  ButtonCard(
      {required this.imgUrl,
      required this.routeName,
      required this.d,
      required this.name});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(routeName, arguments: d);
      },
      child: Card(
        elevation: 1,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.98 / 2 - 10,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  imgUrl,
                  height: 20,
                  width: 20,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

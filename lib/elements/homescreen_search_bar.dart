import 'package:flutter/material.dart';

class HomeScreenSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ((MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.08),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 0.5,
          color: Color(0xFF3E4067),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          )
        ],
      ),
      //boxShadow: [kDefualtShadow]),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search Your Destination",
          hintStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            color: Color(0xFF3E4067),
          ),
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
        ),
      ),
    );
  }
}

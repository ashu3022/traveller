import 'package:flutter/material.dart';

class StackImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
              0.4,
          width: double.infinity,
          child: Image.asset(
            'assets/images/vecteezy_Background_nl1220.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          //top: 0,
          child: Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.35,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top) *
                        0.2),
                Text(
                  'Travelers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.16,
                    height: 0.5,
                  ),
                ),
                Text(
                  'Travel Planner App',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  //textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

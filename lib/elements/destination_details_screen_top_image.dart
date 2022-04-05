import 'package:flutter/material.dart';

import '../provider/destination.dart';

class DestinationDetailStackImage extends StatelessWidget {
  final Destination d;

  DestinationDetailStackImage(this.d);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height) * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            d.imgUrl,
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
                      d.name,
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

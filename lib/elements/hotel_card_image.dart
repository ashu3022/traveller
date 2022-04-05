import 'package:flutter/material.dart';

import '../models/hotel.dart';

class HotelCardImage extends StatelessWidget {
  final Hotel h;
  HotelCardImage(this.h);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Image.network(
            h.image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 11,
          right: 8,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 25,
            width: 70,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 146, 11, 231),
              borderRadius: BorderRadius.circular(5),
            ),
            child: FittedBox(
              child: Text(
                '₹${h.price}/day',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 8,
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              //color: Color.fromARGB(255, 146, 11, 231),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                FittedBox(
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                FittedBox(
                  child: Text(
                    '${h.rating}',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            icon: Icon(
              Icons.bookmark_border_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

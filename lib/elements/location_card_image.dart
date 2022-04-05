import 'package:flutter/material.dart';

import '../provider/location.dart';

class LocationCardImage extends StatelessWidget {
  final Location l;
  LocationCardImage(this.l);

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
            l.imgUrl,
            fit: BoxFit.cover,
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
                    '${l.rating}',
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

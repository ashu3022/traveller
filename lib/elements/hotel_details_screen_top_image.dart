import 'package:flutter/material.dart';

import '../models/hotel.dart';
import '../provider/destination.dart';
import '../provider/location.dart';

class HotelDetailStackImage extends StatelessWidget {
  final Hotel h;

  HotelDetailStackImage(this.h);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height) * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            h.image,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

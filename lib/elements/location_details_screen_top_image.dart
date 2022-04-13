import 'package:flutter/material.dart';

import '../provider/destination.dart';
import '../provider/location.dart';

class LocationDetailStackImage extends StatelessWidget {
  final Location l;

  LocationDetailStackImage(this.l);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height) * 0.4,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            l.imgUrl,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

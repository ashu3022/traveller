import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../elements/destination_details_screen_bottom.dart';
import '../provider/destination.dart';
import '../elements/destination_details_screen_top_image.dart';
import '../provider/location.dart';
import '../elements/location_details_screen_top_image.dart';
import '../elements/location_details_sreen_bottom.dart';

class LocationDetailsBelowScreen extends StatelessWidget {
  //static const routeName = '/location-details-screen';
  //final Destination dest;
  final Location l;
  LocationDetailsBelowScreen(this.l);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height +
              AppBar().preferredSize.height,
          width: MediaQuery.of(context).size.width,
        ),
        LocationDetailStackImage(l),
        Positioned(
          top: (MediaQuery.of(context).size.height +
                  AppBar().preferredSize.height) *
              0.28,
          child: LocationDetailsScreenBottom(l),
        ),
      ],
    );
  }
}

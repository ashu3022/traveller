import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/destination_details_screen.dart';
import '../elements/homescreen_search_bar.dart';
import '../screens/constraints.dart';
import '../widgets/Homescreentopview.dart';
import '../provider/location.dart';
import '../provider/location_provider.dart';
import '../widgets/homescreen_stories_card.dart';

class Homescreen extends StatelessWidget {
  static const routeName = '/homescreen';
  //final String authToken;

  //Homescreen(this.authToken);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: [
          HomeScreenTopBody(),
          Positioned(
            child: HomeScreenSearchBar(),
            top: ((MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.4) -
                ((MediaQuery.of(context).size.height) * 0.07) / 2,
          ),
          Positioned(
            top: 400,
            child: Container(),
          ),
        ],
      ),
    );
  }
}

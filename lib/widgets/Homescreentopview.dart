import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../elements/homescreen_scrollable.dart';
import '../elements/homescreen_stories.dart';
import '../elements/homescreen_hot_destinations.dart';
import '../elements/homescreen_top_image.dart';

class HomeScreenTopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StackImage(),
        SizedBox(
          height: ((MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.15) /
              2,
        ),
        //HotDestinations(),
        HomeScreenBottom(),
      ],
    );
  }
}

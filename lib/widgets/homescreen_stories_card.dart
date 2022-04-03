import 'package:flutter/material.dart';

import '../provider/destination.dart';

class StoriesCard extends StatelessWidget {
  //final Destination d;

  final String imgUrl;
  StoriesCard(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    final cardHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) *
        0.1;
    final cardWidth = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) *
        0.1;
    return ClipOval(
      child: Container(
        height: cardHeight,
        width: cardHeight,
        child: Image.network(
          imgUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

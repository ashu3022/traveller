import 'package:flutter/material.dart';

class DestinationDetailStackImage extends StatelessWidget {
  final String imgUrl;

  DestinationDetailStackImage(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
              0.5,
          width: MediaQuery.of(context).size.width,
          child: Image.network(imgUrl),
        )
      ],
    );
  }
}

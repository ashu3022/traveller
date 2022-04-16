import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../elements/destination_details_screen_bottom.dart';
import '../provider/destination.dart';
import '../elements/destination_details_screen_top_image.dart';
import '../provider/location.dart';
import '../widgets/destination_detail_button_card.dart';

class DestinationDetailsScreen extends StatelessWidget {
  static const routeName = '/destination-details-screen';
  //final Destination dest;

  @override
  Widget build(BuildContext context) {
    final Destination dest =
        ModalRoute.of(context)!.settings.arguments as Destination;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height +
                AppBar().preferredSize.height,
            width: MediaQuery.of(context).size.width,
          ),
          DestinationDetailStackImage(dest),
          Positioned(
            top: (MediaQuery.of(context).size.height +
                    AppBar().preferredSize.height) *
                0.28,
            child: DestinationDetailsScreenBottom(dest),
          ),
        ],
      ),
    );
  }
}

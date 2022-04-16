import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/location.dart';
import 'package:travel_app/widgets/destination_details_screen_location_card.dart';

import '../provider/destination_provider.dart';
import '../provider/destination.dart';
import '../widgets/homescreen_hotdestination_card.dart';
import '../widgets/destination_card.dart';
import '../provider/location_provider.dart';

class DestinationNotFoundErrorScreen extends StatelessWidget {
  static const routeName = '/destination-not-found';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Search'),
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Destinaion Not Found',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

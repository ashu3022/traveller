import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/see_all_destination_screen.dart';
import './screens/see_all_location_screen.dart';
import '../screens/hotel_list_screen.dart';
import './provider/hotel_provider.dart';
import './screens/destination_details_screen.dart';
import './screens/homescreen.dart';
import './provider/destination.dart';
import './provider/location.dart';
import './provider/destination_provider.dart';
import './screens/destination_details_screen.dart';
import './screens/location_details_screen.dart';
import './screens/slider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => HotelProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => DestinationProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Travel App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          //primaryColor: Color(0xFF3E4067),
        ),
        home:
            Sliderpage(), //Homescreen(), //HotelList(d), //DestinationDetailsScreen(),

        routes: {
          SeeAllDestination.routeName: (ctx) => SeeAllDestination(),
          SeeAllLocation.routeName: (ctx) => SeeAllLocation(),
          DestinationDetailsScreen.routeName: (ctx) =>
              DestinationDetailsScreen(),
          LocationDetailsScreen.routeName: (ctx) => LocationDetailsScreen(),
          Homescreen.routeName: (ctx) => Homescreen(),
        },
      ),
    );
  }
}

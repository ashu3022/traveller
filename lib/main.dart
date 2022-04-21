import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:travel_app/models/add_to_trip.dart';
import 'package:travel_app/provider/add_to_trip_provider.dart';

import './provider/auth_provider.dart';
import './screens/flights.dart';
import './screens/trains.dart';
import './screens/destination_does_not_exist_screen.dart';
import './screens/hotel_description_screen.dart';
import './screens/TabsScreen.dart';
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
import './provider/location_provider.dart';
import './screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //debu
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => HotelProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => TripProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => DestinationProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => LocationProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => HotelProvider(),
        ),
      ],
      child: GetMaterialApp(
        title: 'Travel App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          //primaryColor: Color(0xFF3E4067),
        ),
        home:
            Sliderpage(), //TabsScreen(), //Homescreen(), //HotelList(d), //DestinationDetailsScreen(),

        routes: {
          SeeAllDestination.routeName: (ctx) => SeeAllDestination(),
          SeeAllLocation.routeName: (ctx) => SeeAllLocation(),
          DestinationDetailsScreen.routeName: (ctx) =>
              DestinationDetailsScreen(),
          LocationDetailsScreen.routeName: (ctx) => LocationDetailsScreen(),
          Homescreen.routeName: (ctx) => Homescreen(),
          TabsScreen.routeName: (ctx) => TabsScreen(),
          SignInScreen.routeName: (ctx) => SignInScreen(),
          HotelList.routeName: (ctx) => HotelList(),
          DestinationNotFoundErrorScreen.routeName: (ctx) =>
              DestinationNotFoundErrorScreen(),
          HotelDetailsScreen.routeName: (ctx) => HotelDetailsScreen(),
          Flight.routeName: (context) => Flight(),
          Train.routeName: (context) => Train(),
          
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider/hot_destination_provider.dart';
import './screens/homescreen.dart';

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
          create: (ctx) => HotDestinationProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          //primaryColor: Color(0xFF3E4067),
        ),
        home: Homescreen(),

        //routes: ,
      ),
    );
  }
}

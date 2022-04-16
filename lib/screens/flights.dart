import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';
import 'package:travel_app/widgets/flight_card.dart';
//hello anyone?

class Flight extends StatelessWidget {
  static const routeName = "/flight";
  final colorBg = Colors.grey[300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flights'),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        backgroundColor: colorBg,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.white,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                //returns a widget
                return FlightCard();
              },
              itemCount: 10,
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_material/ticket_material.dart';
import 'package:travel_app/models/airplane.dart';
import 'package:travel_app/provider/flight_provider.dart';
import 'package:travel_app/widgets/flight_card.dart';
//hello anyone?

class Flight extends StatelessWidget {
  static const routeName = "/flight";
  final colorBg = Colors.grey[300];

  @override
  Widget build(BuildContext context) {
    Map<String, String> m =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Flights'),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        backgroundColor: colorBg,
        body: FutureBuilder(
            future: Provider.of<FlightProvider>(context, listen: false)
                .fetchRapidFlightGet1(m['from'] as String, m['to'] as String,
                    m['date'] as String, m['seats'] as String),
            builder: (ctx, dataSnapshot) {
              if (dataSnapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (dataSnapshot.error == null) {
                  print(dataSnapshot.error == null);
                  List<Airplane> flights =
                      Provider.of<FlightProvider>(context, listen: false).items;
                  return SafeArea(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.white,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: ListView.builder(
                        itemBuilder: (ctx, index) {
                          //returns a widget
                          return FlightCard(flights[index]);
                        },
                        itemCount: flights.length,
                      ),
                    ),
                  );
                } else {
                  print(dataSnapshot.error == null);
                  return Center(
                    child: Text(
                      'An Error Occured',
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                }
              }
            }));
  }
}

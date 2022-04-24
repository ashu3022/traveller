import 'package:flutter/material.dart';

class TravelBuddy extends StatelessWidget {
  static const routeName = '/travelbuddy';
  TravelBuddy({Key? key}) : super(key: key);
  final List publicTrips = [1, 1, 1, 1, 1, 1, 1, 1, 1];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find Travel Buddies")),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            i = i + 1;
            return Container(
              height: 130,
              child: Card(
                child: ListTile(
                    subtitle: Text(
                      "5-6days tour and flexible dates in may month",
                    ),
                    leading: Icon(Icons.image),
                    trailing: Text(
                      "contact-user" + i.toString() + "@gmail.com",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    title: Text("Trip to Mahabaleshwar")),
              ),
            );
          }),
    );
  }
}

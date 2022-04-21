import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/widgets/planned_trip_hotel_card.dart';
import 'package:travel_app/widgets/planned_trip_location.dart';

import '../models/hotel.dart';
import '../provider/add_to_trip_provider.dart';
import '../provider/destination.dart';
import '../provider/location.dart';
import '../widgets/destination_card.dart';
import '../widgets/destination_details_screen_location_card.dart';
import '../widgets/planned_trip_destination_card.dart';

class PlannedTrip extends StatelessWidget {
  static const routeName = '/planned-trips';
  @override
  Widget build(BuildContext context) {
    Destination? d;
    Hotel? h;
    double cost;
    if (Provider.of<TripProvider>(context).dest != null) {
      d = Provider.of<TripProvider>(context).dest as Destination;
    }
    if (Provider.of<TripProvider>(context).hotel != null) {
      h = Provider.of<TripProvider>(context).hotel as Hotel;
    }
    cost = Provider.of<TripProvider>(context).cost as double;
    List<Location> locs =
        Provider.of<TripProvider>(context).loc as List<Location>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Planned Trip"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height -
            MediaQuery.of(context).padding.top,
        child: d == null
            ? Center(
                child: Text(
                  'No Trip Created Yet',
                  style: TextStyle(color: Color.fromARGB(255, 143, 143, 143)),
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.022,
                              right: MediaQuery.of(context).size.width * 0.022),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Destination',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Total Cost : ₹${cost.toStringAsFixed(0)}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 39, 144, 58)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        PlannedTripDestinationCard(d),
                      ],
                    ),
                    h == null
                        ? SizedBox(
                            height: 10,
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Container(
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.022),
                                child: Text(
                                  'Hotel',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              PlannedTripHotelCard(h!),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.022),
                          child: Text(
                            'Locations',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        locs.length == 0
                            ? Text(
                                'Empty',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 143, 143, 143)),
                              )
                            : Container(
                                height: (MediaQuery.of(context).size.height -
                                        MediaQuery.of(context).padding.top) *
                                    0.25,
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.022),
                                width: MediaQuery.of(context).size.width * 0.98,
                                child: ListView.separated(
                                  itemBuilder: ((context, index) {
                                    return PlannedtripLocationCard(
                                        locs[index], d!);
                                  }),
                                  separatorBuilder: (ctx, index) =>
                                      const SizedBox(
                                    width: 10,
                                  ),
                                  itemCount: locs.length,
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

//location card

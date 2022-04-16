import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/hotel.dart';
import 'package:travel_app/provider/hotel_provider.dart';
import 'package:travel_app/widgets/hotel_card.dart';

import '../provider/destination.dart';

class HotelList extends StatelessWidget {
  static const String routeName = '/hotel-list';

  HotelList();

  @override
  Widget build(BuildContext context) {
    final Destination d =
        ModalRoute.of(context)!.settings.arguments as Destination;
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.location_pin,
              color: Colors.blue,
              size: 28,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.32,
              height: AppBar().preferredSize.height * 0.9,
              alignment: Alignment.centerLeft,
              child: FittedBox(
                child: Text(
                  d.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: Provider.of<HotelProvider>(context, listen: false)
            .fetchRapidHotelsGet1(d),
        builder: (ctx, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (dataSnapshot.error == null) {
              print(dataSnapshot.error == null);
              List<Hotel> hotels =
                  Provider.of<HotelProvider>(context, listen: false)
                      .fetchHotels(d.name);
              return Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top -
                            AppBar().preferredSize.height) *
                        0.05,
                    child: Text(
                      'Hotels',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top -
                            AppBar().preferredSize.height) *
                        0.01,
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top -
                            AppBar().preferredSize.height) *
                        0.94,
                    width: MediaQuery.of(context).size.width * 0.98,
                    child: Scrollbar(
                      isAlwaysShown: true,
                      child: ListView.separated(
                        itemBuilder: ((context, index) {
                          return HotelCard(hotels[index]);
                        }),
                        separatorBuilder: (ctx, index) => const SizedBox(
                          width: 5,
                        ),
                        itemCount: hotels.length,
                        //scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
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
        },
      ),
    );
  }
}

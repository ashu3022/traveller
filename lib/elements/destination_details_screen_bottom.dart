import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/screens/flights.dart';
import 'package:travel_app/screens/trains.dart';

import '../provider/destination.dart';
import '../widgets/destination_details_screen_location_card.dart';
import '../screens/see_all_location_screen.dart';
import '../provider/location.dart';
import '../provider/location_provider.dart';
import '../widgets/destination_detail_button_card.dart';
import 'package:readmore/readmore.dart';
import '../screens/hotel_list_screen.dart';

class DestinationDetailsScreenBottom extends StatelessWidget {
  final Destination dest;
  DestinationDetailsScreenBottom(this.dest);
  @override
  Widget build(BuildContext context) {
    final List<Location> l =
        Provider.of<LocationProvider>(context).fetchHotLocations(dest);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      height:
          (MediaQuery.of(context).size.height + AppBar().preferredSize.height) *
              0.65,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.015,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                'Description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                dest.description,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 88, 88, 88),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.01,
            ),
            Container(
              //padding: EdgeInsets.all(5),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.05,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      Text(
                        'Popular in Town',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                              SeeAllLocation.routeName,
                              arguments: dest);
                        },
                        child: Text(
                          'See All>',
                          style: TextStyle(
                            color: Color(0xFF3F4168),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.3,
              width: MediaQuery.of(context).size.width * 0.98,
              child: ListView.separated(
                itemBuilder: ((context, index) {
                  return ChangeNotifierProvider.value(
                    value: l[index],
                    child: PopularInTownCard(dest),
                  );
                }),
                separatorBuilder: (ctx, index) => const SizedBox(
                  width: 5,
                ),
                itemCount: l.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.98,
              height: 50,
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonCard(
                    imgUrl: 'assets/icons/hotel-svgrepo-com.svg',
                    routeName: HotelList.routeName,
                    d: dest,
                    name: 'Hotels',
                  ),
                  ButtonCard(
                    imgUrl: 'assets/icons/flight-plane-svgrepo-com.svg',
                    routeName: Flight.routeName,
                    d: dest,
                    name: 'Flights',
                  ),
                ],
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.98,
            //   height: 50,
            //   alignment: Alignment.topCenter,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       ButtonCard(
            //         imgUrl: 'assets/icons/train-svgrepo-com.svg',
            //         routeName: Train.routeName,
            //         d: dest,
            //         name: 'Trains',
            //       ),
            //       ButtonCard(
            //         imgUrl: 'assets/icons/restaurant-svgrepo-com.svg',
            //         routeName: HotelList.routeName,
            //         d: dest,
            //         name: 'Dinning',
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

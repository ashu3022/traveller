import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/location.dart';
import 'package:travel_app/widgets/destination_details_screen_location_card.dart';

import '../provider/destination_provider.dart';
import '../provider/destination.dart';
import '../widgets/homescreen_hotdestination_card.dart';
import '../widgets/destination_card.dart';
import '../provider/location_provider.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(AppBar().preferredSize.height);
    // print(MediaQuery.of(context).padding.bottom);
    // print(MediaQuery.of(context).size.height);
    List<Destination> d =
        Provider.of<DestinationProvider>(context).favouriteItems;
    List<Location> l = Provider.of<LocationProvider>(context).favouriteItems;
    return d.length == 0 && l.length == 0
        ? Center(
            child: Text('No Bookmarks added yet'),
          )
        : Column(
            children: [
              d.length == 0
                  ? SizedBox(
                      height: 0,
                    )
                  : Container(
                      height: (MediaQuery.of(context).size.height -
                              AppBar().preferredSize.height -
                              kBottomNavigationBarHeight -
                              MediaQuery.of(context).padding.top) /
                          2.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: ((MediaQuery.of(context).size.height -
                                        kBottomNavigationBarHeight -
                                        AppBar().preferredSize.height -
                                        MediaQuery.of(context).padding.top) /
                                    2.5) *
                                0.03,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Container(
                            height: ((MediaQuery.of(context).size.height -
                                        kBottomNavigationBarHeight -
                                        AppBar().preferredSize.height -
                                        MediaQuery.of(context).padding.top) /
                                    2.5) *
                                0.1,
                            width: MediaQuery.of(context).size.width * 0.98,
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Destinations',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                          Container(
                            height: ((MediaQuery.of(context).size.height -
                                        kBottomNavigationBarHeight -
                                        AppBar().preferredSize.height -
                                        MediaQuery.of(context).padding.top) /
                                    2.5) *
                                0.85,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: ListView.separated(
                              itemBuilder: ((context, index) {
                                return HotDestinationCard(d[index]);
                              }),
                              separatorBuilder: (ctx, index) => const SizedBox(
                                width: 5,
                              ),
                              itemCount: d.length,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ],
                      ),
                    ),
              l.length == 0
                  ? SizedBox(
                      height: 0,
                    )
                  : Container(
                      height: ((MediaQuery.of(context).size.height -
                              kBottomNavigationBarHeight -
                              AppBar().preferredSize.height -
                              MediaQuery.of(context).padding.top) /
                          2.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: ((MediaQuery.of(context).size.height -
                                        kBottomNavigationBarHeight -
                                        AppBar().preferredSize.height -
                                        MediaQuery.of(context).padding.top) /
                                    2.5) *
                                0.03,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Container(
                            height: ((MediaQuery.of(context).size.height -
                                        kBottomNavigationBarHeight -
                                        AppBar().preferredSize.height -
                                        MediaQuery.of(context).padding.top) /
                                    2.5) *
                                0.1,
                            width: MediaQuery.of(context).size.width * 0.98,
                            child: Row(children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Locations',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                          Container(
                            height: ((MediaQuery.of(context).size.height -
                                        kBottomNavigationBarHeight -
                                        AppBar().preferredSize.height -
                                        MediaQuery.of(context).padding.top) /
                                    2.5) *
                                0.85,
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: ListView.separated(
                              itemBuilder: ((context, index) {
                                Destination dest = Provider.of<DestinationProvider>(context,listen: false)
                                    .fetchDestinationByName(l[index].dName);
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
                        ],
                      ),
                    ),
            ],
          );
  }
}

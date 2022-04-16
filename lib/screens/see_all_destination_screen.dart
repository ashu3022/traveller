import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/destination.dart';
import '../provider/destination_provider.dart';
import '../widgets/destination_card.dart';

class SeeAllDestination extends StatelessWidget {
  static const routeName = '/see-all-destination';
  @override
  Widget build(BuildContext context) {
    final List<Destination> d = Provider.of<DestinationProvider>(context).items;
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Color(0xFF5E5E5E),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: MediaQuery.of(context).size.width * 0.32,
          height: AppBar().preferredSize.height * 0.9,
          alignment: Alignment.centerLeft,
          child: FittedBox(
            child: Text(
              'Destinations',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    AppBar().preferredSize.height) *
                0.01,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    AppBar().preferredSize.height) *
                0.94,
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.98,
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return DestinationCard(d[index]);
              }),
              separatorBuilder: (ctx, index) => const SizedBox(
                width: 5,
              ),
              itemCount: d.length,
              //scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../provider/destination.dart';
import '../screens/destination_details_screen.dart';

class HotDestinationCard extends StatelessWidget {
  final Destination d;
  HotDestinationCard(this.d);

  @override
  Widget build(BuildContext context) {
    final cardHeight = (MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top) *
        0.28;
    final cardWidth = MediaQuery.of(context).size.width * 0.4;
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DestinationDetailsScreen.routeName, arguments: d);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          elevation: 0,
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: Container(
            height: cardHeight,
            width: cardWidth,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: cardHeight * 0.8,
                    child: Image.network(
                      d.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    height: cardHeight * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          //padding: EdgeInsets.all(3),
                          height: cardHeight * 0.13,
                          width: cardWidth * 0.2,
                          child: FittedBox(
                            child: Icon(
                              Icons.location_pin,
                              color: Colors.blue, //Color(0xFF3E4067),
                            ),
                          ),
                        ),
                        Container(
                          //alignment: Alignment.centerLeft,
                          //padding: EdgeInsets.all(8),
                          height: cardHeight * 0.13,
                          width: cardWidth * 0.8,
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              d.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

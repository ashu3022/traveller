import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/destination.dart';
import 'package:travel_app/provider/destination_provider.dart';
import 'package:travel_app/screens/destination_details_screen.dart';
import 'package:travel_app/screens/destination_does_not_exist_screen.dart';

class HomeScreenSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Destination> dests = Provider.of<DestinationProvider>(context).items;
    TextEditingController _nameController = TextEditingController();
    return Container(
      height: ((MediaQuery.of(context).size.height) * 0.07),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 0.5,
          color: Color(0xFF3E4067),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          )
        ],
      ),
      //boxShadow: [kDefualtShadow]),
      child: TextField(
        controller: _nameController,
        decoration: InputDecoration(
          hintText: "Search Your Destination",
          hintStyle: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.04,
            color: Color(0xFF3E4067),
          ),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              int i;
              for (i = 0; i < dests.length; i++) {
                if (dests[i].name.toLowerCase() ==
                    _nameController.text.toLowerCase()) {
                  break;
                }
              }
              if (i == dests.length) {
                Navigator.of(context)
                    .pushNamed(DestinationNotFoundErrorScreen.routeName);
                _nameController.text = "";
              } else {
                Navigator.of(context).pushNamed(
                    DestinationDetailsScreen.routeName,
                    arguments: dests[i]);
                _nameController.text = "";
              }
            },
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
        ),
      ),
    );
  }
}

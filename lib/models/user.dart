import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:travel_app/provider/auth_provider.dart';
import 'package:travel_app/provider/destination.dart';
import 'package:travel_app/provider/location.dart';
import 'dart:convert';

import '../models/hotel_fav.dart';
import '../models/location_fav.dart';
import './destination_fav.dart';
import './add_to_trip.dart';

class User {
  final String userId;
  AddToTrip? trip;
  final String tokenId;
  List<DestinationFav> destfav;
  List<LocationFav> locationfav;
  List<HotelFav> hotelfav;
  bool isposted = false;

  User({
    required this.tokenId,
    required this.userId,
    required this.hotelfav,
    required this.locationfav,
    required this.destfav,
    this.trip,
  });

  // Future<void> patchTrip(AddToTrip tr, String tId) async {
  //   var url = Uri.parse(
  //       'https://travel-planner-eb9c3-default-rtdb.firebaseio.com/users.json');
  //   try {
  //     var response = await http.get(url);
  //     String key = "";
  //     if (json.decode(response.body) != null) {
  //       Map<String, dynamic> m = json.decode(response.body);

  //       m.forEach((k, value) {
  //         if (value['tokenId'] == tId) {
  //           key = k;
  //         }
  //       });
  //       AddToTrip newTrip = AddToTrip(tripId: tr.tripId, dest: tr.dest, loc: [
  //         ...tr.loc,...(m[key]['trip']['loc'])
  //       ]);
  //       if (m[key]['trip'] != null) {
  //         if ((m[key]['trip']['dest']['name']) == tr.dest.name) {
  //           var url = Uri.parse(
  //               'https://travel-planner-eb9c3-default-rtdb.firebaseio.com/users/$key.json');
  //           response = await http.put(
  //             url,
  //             body: json.encode({
  //               'userId': key,
  //               'tokenId': tId,
  //               'trip': tr,
  //               'destfav': m[key]['destfav'],
  //               'locationfav': m[key]['locationfav'],
  //               'hotelfav': m[key]['hotelfav'],
  //             }),
  //           );
  //         } else {
  //           print('trip add failed');
  //         }
  //       }
  //     }
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  //adding user to firebase
  Future<void> addUser(User person) async {
    var url = Uri.parse(
        'https://travel-planner-eb9c3-default-rtdb.firebaseio.com/users.json');
    try {
      var response = await http.get(url);
      if (json.decode(response.body) != null) {
        Map<String, dynamic> m = json.decode(response.body);

        m.forEach((key, value) {
          if (value['tokenId'] == tokenId) {
            isposted = true;
            //Do Nothing
          }
        });
      }

      if (!isposted) {
        response = await http.post(
          url,
          body: json.encode(
            {
              'userId': person.userId,
              'tokenId': person.tokenId,
              //'trip': person.trip,
              'destfav': person.destfav,
              'locationfav': person.locationfav,
              'hotelfav': person.hotelfav,
            },
          ),
        );
      }
    } catch (error) {
      print(error);
      throw error;
    }
    // (response) {
    // print(json.decode(response.body)['name']);

    // }
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:travel_app/models/airplane.dart';

import '../provider/destination.dart';
import '../models/hotel.dart';

class FlightProvider with ChangeNotifier {
  List<Airplane> _items = [];

  List<Airplane> get items {
    return [..._items];
  }

  // Future<void> fetchRapidHotelsGet2() {
  //   fetchRapidHotelsGet1(dest);
  // }

  Future<void> fetchRapidFlightGet1(
      String from, String to, String date, String seats) async {
    final apiKey = '45f1856e26msh8cf9f93170e82f3p1caaedjsn93e53bb94979';
    final baseUrl = 'priceline-com-provider.p.rapidapi.com';
    String sourceCode, destCode;

    List<Airplane> flights = [];

    final Map<String, String> _headers = {
      "content-type": "application/json",
      "x-rapidapi-host": "priceline-com-provider.p.rapidapi.com",
      "x-rapidapi-key": apiKey,
    };

    String endpoint = '/v1/flights/locations';
    Map<String, String> query = {
      'name': from,
    };
    String endpoint2 = '/v1/flights/search';

    Uri uri = Uri.https(baseUrl, endpoint, query);
    try {
      var response = await http.get(uri, headers: _headers);
      List<dynamic> data = json.decode(response.body);
      // print(data);
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);

        Map m = data[0];
        sourceCode = m['id'];
        print(sourceCode);

        query = {
          'name': to,
        };
        uri = Uri.https(baseUrl, endpoint, query);
        response = await http.get(uri, headers: _headers);
        data = json.decode(response.body);
        if (response.statusCode == 200) {
          m = data[0];
          destCode = m['id'];
          print(destCode);
          query = {
            "date_departure": date,
            "class_type": 'ECO',
            "itinerary_type": "ONE_WAY",
            "location_arrival": destCode,
            "location_departure": sourceCode,
            "sort_order": "PRICE",
            "number_of_stops": "0",
          };
          uri = Uri.https(baseUrl, endpoint2, query);
          response = await http.get(uri, headers: _headers);
          if (response.statusCode == 200) {
            Map data2 = json.decode(response.body);
            var alloptions = data2['pricedItinerary'] as List<dynamic>;
            //print(alloptions);

            alloptions.forEach((element) {
              var m = element['pricingInfo']['ticketingAirline'];
              var p = element['pricingInfo']['totalFare'] as double;
              var sliceId = element['slice'][0]['uniqueSliceId'];

              var forSegId = data2['slice'];
              var forDetails = data2["segment"];
              var segId;
              var arrTime;
              var depTime;
              var duration;
              forSegId.forEach((element) {
                if (element["uniqueSliceId"] == sliceId) {
                  segId = element["segment"][0]["uniqueSegId"];
                }
                forDetails.forEach((element) {
                  if (element["uniqueSegId"] == segId) {
                    arrTime = element["arrivalDateTime"];
                    depTime = element["departDateTime"];
                    duration = element["duration"];
                    flights.add(Airplane(
                        sourceName: sourceCode,
                        dateDeparture: date,
                        price: p * 76,
                        arrivalTime: arrTime as String,
                        duration: duration as int,
                        destinationName: destCode,
                        departureTime: depTime as String,
                        airline: m as String));
                  }
                });
              });
            });
            _items = flights;
            print(_items);
          }
        } else {
          print('error');
        }
      } else {
        print("error in response 1");
      }
    } catch (error) {
      print(error);
    }
    // If that response was not OK, throw an error.

    //return destinationId;
  }
}

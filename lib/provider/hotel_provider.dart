import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../provider/destination.dart';
import '../models/hotel.dart';

class HotelProvider with ChangeNotifier {
  List<Hotel> _items = [
    
  ];

  List<Hotel> get items {
    return [..._items];
  }


  Future<void> fetchRapidHotelsGet1(Destination city_name) async {
    final apiKey = '45f1856e26msh8cf9f93170e82f3p1caaedjsn93e53bb94979';
    final baseUrl = 'priceline-com-provider.p.rapidapi.com';
    String destinationId;
    List<dynamic> hotels;

    final Map<String, String> _headers = {
      "content-type": "application/json",
      "x-rapidapi-host": "priceline-com-provider.p.rapidapi.com",
      "x-rapidapi-key": apiKey,
    };

    String endpoint = '/v1/hotels/locations';
    Map<String, String> query = {
      'search_type': 'CITY',
      'name': city_name.name.toLowerCase()
    };
    String endpoint2 = '/v1/hotels/search';

    Uri uri = Uri.https(baseUrl, endpoint, query);
    try {
      final response = await http.get(uri, headers: _headers);
      List<dynamic> data = json.decode(response.body);
      // print(data);
      if (response.statusCode == 200) {
        destinationId = data[0]["cityID"];
        print(destinationId);
        Map<String, String> query2 = {
          "date_checkin": '2022-06-17',
          "location_id": destinationId,
          "date_checkout": '2022-06-18',
          "sort_order": 'HDR',
          'rooms_number': '1',
          'star_rating_ids': '4.0,4.5,5.0'
        };

        Uri uri2 = Uri.https(baseUrl, endpoint2, query2);
        final response2 = await http.get(uri2, headers: _headers);

        if (response2.statusCode == 200) {
          Map<dynamic, dynamic> m = json.decode(response2.body);
          print('hello');
          hotels = m['hotels'] as List<dynamic>;

          print(hotels);
          _items = [];
          hotels.forEach((element) {
            _items.add(
              Hotel(
                id: element['hotelId'],
                name: element['name'],
                rating: element['starRating'],
                price: double.parse(element['ratesSummary']['minPrice']) * 75,
                image: element['thumbnailUrl'],
                destination: city_name.name,
                description:
                    "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
                address: element['location']['address']['addressLine1'],
              ),
            );
            //print(hotels);
          });
        } else {
          print("error in response 2");
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

  List<Hotel> get favouriteItems {
    return _items.where((element) => element.isFavourite).toList();
  }

  Hotel findBy(String pId) {
    return items.firstWhere((pdc) => pdc.id == pId);
  }

  List<Hotel> fetchHotels(String dest) {
    return _items.where((element) => element.destination == dest).toList();
  }
}

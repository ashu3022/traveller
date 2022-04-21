import 'package:flutter/material.dart';

import '../models/hotel.dart';
import '../provider/destination.dart';
import '../provider/location.dart';

class TripProvider with ChangeNotifier {
  List<Location> loc = [];
  Destination? dest;
  Hotel? hotel;
  double cost = 0.0;

  bool addLocation(Location l, Destination d) {
    if (dest == null) {
      dest = d;
      loc = [l];
      cost += l.price;
      notifyListeners();
      return true;
    } else {
      if (dest!.id == d.id) {
        if (!loc.contains(l)) {
          loc.add(l);
        }
        notifyListeners();
        return true;
        //ok you can add location
      } else {
        //you cant add location
        return false;
      }
    }
  }

  int addHotel(Hotel h, Destination d, {bool override = false}) {
    //1 : empty trip or empty hotel
    //2 : present but a hotel is already existing
    //3 : hotel Destination Doesnt match
    if (dest == null) {
      dest = d;
      hotel = h;
      cost += h.price;
      notifyListeners();
      print('dest not null');
      return 1;
    } else {
      if (dest!.name == d.name) {
        if (hotel == null) {
          hotel = h;
          cost += h.price;
          notifyListeners();
          print('hotel null');
          return 1;
        } else {
          if (override) {
            cost -= hotel!.price;
            cost += h.price;
            hotel = h;
            notifyListeners();
            return 1;
          } else {
            print('hotel presnet');
            return 2;
          }
        }
        //ok you can add hotel
      } else {
        //you cant add hotel
        return 3;
      }
    }
  }

  void resetTrip() {
    dest = null;
    loc = [];
    cost = 0.0;
    hotel = null;
    notifyListeners();
  }
}

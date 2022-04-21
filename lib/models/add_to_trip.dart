import 'package:flutter/cupertino.dart';
import 'package:travel_app/models/hotel.dart';

import '../provider/destination.dart';
import '../provider/location.dart';

class AddToTrip with ChangeNotifier {
  final String tripId;
  Destination dest;
  List<Location> loc;
  List<Hotel>? hotels;

  AddToTrip({
    required this.tripId,
    required this.dest,
    required this.loc,
    this.hotels,
  });  
}

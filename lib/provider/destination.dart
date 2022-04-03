import 'package:flutter/material.dart';

import 'location.dart';

class Destination with ChangeNotifier {
  final String name;
  final String id;
  final String summary;
  final String description;
  final String imgUrl;
  final List<String> reviews;
  final List<Location> subLocations;
  bool isFavourite = false;

  Destination({
    required this.name,
    required this.id,
    required this.summary,
    required this.description,
    required this.imgUrl,
    required this.reviews,
    required this.subLocations,
  });
}

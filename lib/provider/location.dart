import 'package:flutter/material.dart';

class Location with ChangeNotifier {
  final String name;
  final String id;
  final String summary;
  final String description;
  final String imgUrl;
  final List<String> reviews;
  bool isFavourite = false;

  Location({
    required this.name,
    required this.id,
    required this.summary,
    required this.description,
    required this.imgUrl,
    required this.reviews,
  });
}

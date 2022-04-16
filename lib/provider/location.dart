import 'package:flutter/material.dart';

class Location with ChangeNotifier {
  final String name;
  final String dName;
  final String id;
  final String summary;
  final String description;
  final String imgUrl;
  final List<String> reviews;
  final double rating;
  final bool isPopular;
  final double price;
  bool isFavourite = false;

  Location({
    required this.name,
    required this.dName,
    required this.id,
    required this.summary,
    required this.description,
    required this.imgUrl,
    required this.reviews,
    required this.isPopular,
    required this.rating,
    required this.price,
  });
  void toggleFavouriteButton() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}

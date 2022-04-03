import 'dart:convert';
import 'package:flutter/material.dart';

import 'destination.dart';

class DestinationProvider with ChangeNotifier {
  List<Destination> _items = [];

  List<Destination> get items {
    return [..._items];
  }

  List<Destination> get favouriteItems {
    return _items.where((element) => element.isFavourite).toList();
  }

  Destination findBy(String pId) {
    return items.firstWhere((pdc) => pdc.id == pId);
  }

  // Future<void> addValue(Product value) async {
  //   var url = Uri.parse(
  //       'https://lite-e3de0-default-rtdb.asia-southeast1.firebasedatabase.app/products.json');
  //   try {
  //     final response = await http.post(
  //       url,
  //       body: json.encode(
  //         {
  //           'title': value.title,
  //           'id': value.id,
  //           'description': value.description,
  //           'price': value.price,
  //           'imageUrl': value.imageUrl,
  //           'isFavourite': value.isFavourite,
  //         },
  //       ),
  //     );

  //     final Product productItem = Product(
  //       id: json.decode(response.body)['name'],
  //       title: value.title,
  //       description: value.description,
  //       price: value.price,
  //       imageUrl: value.imageUrl,
  //     );
  //     _items.insert(0, productItem);
  //     notifyListeners();
  //   } catch (error) {
  //     print(error);
  //     throw error;
  //   }
  //(response) {
  //print(json.decode(response.body)['name']);

  //}
  //}

  void updateValue(Destination value) {
    int index = _items.indexWhere((element) => element.id == value.id);
    _items[index] = value;
    notifyListeners();
  }

  void deleteProduct(String pId) {
    _items.removeWhere((element) => element.id == pId);
    notifyListeners();
  }
}

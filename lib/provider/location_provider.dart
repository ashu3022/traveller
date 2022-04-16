import 'dart:convert';
import 'package:flutter/material.dart';

import 'destination.dart';
import 'location.dart';

class LocationProvider with ChangeNotifier {
  List<Location> _items = [
    Location(
      price: 150,
      dName: 'Bhopal',
      isPopular: true,
      rating: 4,
      name: "Upper Lake",
      id: DateTime.now().toString(),
      summary: "Very beautiful ",
      description:
          "Upper Lake is the most significant lake of Bhopal commonly known as the Bhojtal. It’s the oldest human-made lake in the country that lies on the west of Bhopal. The locals also call it Bada Talab. Serving around 30 million gallons of water the lake is a primary source of potable water to the residents of the city.",
      imgUrl:
          "https://i.pinimg.com/originals/89/33/d0/8933d0c50aba2b1b201d1ee2186ee722.jpg",
      reviews: [
        "The lake is Simply awesome and boating is soo beautiful overall must watch  place",
        "Beautiful place in Bhopal.  After reaching here, it seems that I have come somewhere on the edge of the sea.  This sight was so beautiful that I cannot tell.  When the light of the night on ,  the whole lake gets lit up with light. One another good thing about this lake is it is clean that maje it different from others."
      ],
    ),
    Location(
      price: 150,
      dName: 'Bhopal',
      isPopular: true,
      rating: 4,
      name: "Lower Lake",
      id: DateTime.now().toString(),
      summary: "Very beatiful lake situated at the heart of the city",
      description:
          "Lower Lake is the most significant lake of Bhopal commonly known as the Bhojtal. It’s the oldest human-made lake in the country that lies on the west of Bhopal. The locals also call it Bada Talab. Serving around 30 million gallons of water the lake is a primary source of potable water to the residents of the city.",
      imgUrl:
          "http://tourmet.com/wp-content/uploads/2014/10/Lower-Lake-Bhopal.jpg",
      reviews: [
        "The lake is Simply awesome and boating is soo beautiful overall must watch  place",
        "Beautiful place in Bhopal.  After reaching here, it seems that I have come somewhere on the edge of the sea.  This sight was so beautiful that I cannot tell.  When the light of the night on ,  the whole lake gets lit up with light. One another good thing about this lake is it is clean that maje it different from others."
      ],
    ),
    Location(
      price: 15,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4,
      name: "Van Vihar",
      id: DateTime.now().toString(),
      summary: "Beautiful ecosystem of diverse wildlife and natural habitation",
      description:
          "Wildlife santuary containing many indigenous species and vegetation ",
      imgUrl:
          "https://tourscanner.com/blog/wp-content/uploads/2020/04/Rocky-Mountain-National-Park-United-States-of-America.jpg",
      reviews: [
        "Sceneric beauty along with various wildife species like tigers,turtles,bear, and lot more",
        "Got utter state of peace and relaxtion of mind upon coming over here and connect with the nature"
      ],
    ), //dummy for sublocation starts from
    Location(
      price: 10,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.5,
      name: "Bharat Bhawan",
      id: DateTime.now().toString(),
      summary: "Excellent ",
      description:
          "Bharat Bhavan is an autonomous multi-arts complex and museum in Bhopal, India, established and funded by the Government of Madhya Pradesh.The architect of the Bharat Bhavan is Charles Correa. Opened in 1982, facing the Upper Lake, Bhopal, it houses multiple art galleries, a graphic printing workshop, a ceramics workshop, an open-air amphitheatre, a studio theatre, an auditorium, a museum of tribal & folk art and libraries of Indian poetry, classical music & folk music.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=18Xf9AOEcESe85aaG-aWZMUVpPXmhPmcE",
      reviews: [
        "Very quiet and peaceful place . It has a entry fee of Rs. 10 . Have beautiful art gallery of different tribal paintings etc. It's worth visiting Bharat bhawan . I kinda loved the place 😇",
        "One of best place to visit in bhopal, specifically for art lovers.  @eternal__canvas , architecture and location of Bharat bhavan is unmatched"
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4,
      name: "Taj-Ul-Masjid",
      id: DateTime.now().toString(),
      summary: "Imposing 19th-century mosque ",
      description:
          "The Taj-ul-Masajid or Tāj-ul-Masjid, is a mosque situated in Bhopal, India. It is the largest mosque in India and one of the largest mosques in Asia. Situated in the Kohefiza suburb of the city, it has large minarets which makes it visible from nearly all elevated regions of the town.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1XDoIHXaCiJeTWV9mWhbZA18WWbYV2gEs",
      reviews: ["No reviews"],
    ),
  ];

  List<Location> get items {
    return [..._items];
  }

  List<Location> get favouriteItems {
    return _items.where((element) => element.isFavourite).toList();
  }

  Location findBy(String pId) {
    return items.firstWhere((pdc) => pdc.id == pId);
  }

  List<Location> fetchHotLocations(Destination d) {
    return (_items.where((element) => element.dName == d.name).toList())
        .where((element) => element.isPopular == true)
        .toList();
  }

  List<Location> fetchLocations(Destination d) {
    return _items.where((element) => element.dName == d.name).toList();
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

  void updateValue(Location value) {
    int index = _items.indexWhere((element) => element.id == value.id);
    _items[index] = value;
    notifyListeners();
  }

  void deleteProduct(String pId) {
    _items.removeWhere((element) => element.id == pId);
    notifyListeners();
  }
}

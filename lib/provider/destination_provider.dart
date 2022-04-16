import 'dart:convert';
import 'package:flutter/material.dart';

import 'destination.dart';
import 'location.dart';

class DestinationProvider with ChangeNotifier {
  List<Destination> _items = [
    Destination(
      isPopular: true,
      name: "Bhopal",
      id: DateTime.now().toString(),
      summary:
          "It is also one of the greenest cities in India. Bhopal is a popular destination among tourists as well as backpackers, and its fame is attributed to the plethora of scenic and interesting spot it houses within its realm.",
      description:
          "Bhopal is a city in the central Indian state of Madhya Pradesh. It's one of India’s greenest cities. There are two main lakes, the Upper Lake and the Lower Lake. On the banks of the Upper Lake is Van Vihar National Park, home to tigers, lions and leopards. The State Museum has fossils, paintings and rare Jain sculptures. Taj-ul-Masjid is one of Asia’s largest mosques, with white domes, minarets and a huge courtyard",
      imgUrl:
          "https://www.tourmyindia.com/blog//wp-content/uploads/2021/10/Best-Places-to-Visit-in-Bhopal-MP-Sanchi-Stupa.jpg",
      reviews: [
        "Bhopal is nice city its also called city of lakes. Many places is here to hangout with family and friends like van vihar, upar lake, sair sapata. Also here is famous shopping place named new market where you can get every type of products in fair price.",
        " I love Bhopal , I feels independent in this city . You should visit Bhopal once in a life. There are many beautiful places you can visit like van vihar, lake view, db mall, people's mall, trival musium "
      ],
    ), //dummy for locations start from here
    Destination(
      isPopular: true,
      name: "Delhi",
      id: DateTime.now().toString(),
      summary:
          "It is also one of the greenest cities in India. Bhopal is a popular destination among tourists as well as backpackers, and its fame is attributed to the plethora of scenic and interesting spot it houses within its realm.",
      description:
          "Bhopal is a city in the central Indian state of Madhya Pradesh. It's one of India’s greenest cities. There are two main lakes, the Upper Lake and the Lower Lake. On the banks of the Upper Lake is Van Vihar National Park, home to tigers, lions and leopards. The State Museum has fossils, paintings and rare Jain sculptures. Taj-ul-Masjid is one of Asia’s largest mosques, with white domes, minarets and a huge courtyard",
      imgUrl:
          "https://www.tourmyindia.com/blog//wp-content/uploads/2021/10/Best-Places-to-Visit-in-Bhopal-MP-Sanchi-Stupa.jpg",
      reviews: [
        "Bhopal is nice city its also called city of lakes. Many places is here to hangout with family and friends like van vihar, upar lake, sair sapata. Also here is famous shopping place named new market where you can get every type of products in fair price.",
        " I love Bhopal , I feels independent in this city . You should visit Bhopal once in a life. There are many beautiful places you can visit like van vihar, lake view, db mall, people's mall, trival musium "
      ],
    ),
    Destination(
      isPopular: true,
      name: "Goa",
      id: DateTime.now().toString(),
      summary:
          "It is also one of the greenest cities in India. Bhopal is a popular destination among tourists as well as backpackers, and its fame is attributed to the plethora of scenic and interesting spot it houses within its realm.",
      description:
          "Bhopal is a city in the central Indian state of Madhya Pradesh. It's one of India’s greenest cities. There are two main lakes, the Upper Lake and the Lower Lake. On the banks of the Upper Lake is Van Vihar National Park, home to tigers, lions and leopards. The State Museum has fossils, paintings and rare Jain sculptures. Taj-ul-Masjid is one of Asia’s largest mosques, with white domes, minarets and a huge courtyard",
      imgUrl:
          "https://www.tourmyindia.com/blog//wp-content/uploads/2021/10/Best-Places-to-Visit-in-Bhopal-MP-Sanchi-Stupa.jpg",
      reviews: [
        "Bhopal is nice city its also called city of lakes. Many places is here to hangout with family and friends like van vihar, upar lake, sair sapata. Also here is famous shopping place named new market where you can get every type of products in fair price.",
        " I love Bhopal , I feels independent in this city . You should visit Bhopal once in a life. There are many beautiful places you can visit like van vihar, lake view, db mall, people's mall, trival musium "
      ],
    ),

    Destination(
      isPopular: true,
      name: "Andaman \$ Nicobar",
      id: DateTime.now().toString(),
      summary:
          "It is also one of the greenest cities in India. Bhopal is a popular destination among tourists as well as backpackers, and its fame is attributed to the plethora of scenic and interesting spot it houses within its realm.",
      description:
          "Bhopal is a city in the central Indian state of Madhya Pradesh. It's one of India’s greenest cities. There are two main lakes, the Upper Lake and the Lower Lake. On the banks of the Upper Lake is Van Vihar National Park, home to tigers, lions and leopards. The State Museum has fossils, paintings and rare Jain sculptures. Taj-ul-Masjid is one of Asia’s largest mosques, with white domes, minarets and a huge courtyard",
      imgUrl:
          "https://www.tourmyindia.com/blog//wp-content/uploads/2021/10/Best-Places-to-Visit-in-Bhopal-MP-Sanchi-Stupa.jpg",
      reviews: [
        "Bhopal is nice city its also called city of lakes. Many places is here to hangout with family and friends like van vihar, upar lake, sair sapata. Also here is famous shopping place named new market where you can get every type of products in fair price.",
        " I love Bhopal , I feels independent in this city . You should visit Bhopal once in a life. There are many beautiful places you can visit like van vihar, lake view, db mall, people's mall, trival musium "
      ],
    ),
  ];

  List<Destination> get items {
    return [..._items];
  }

  List<Destination> get favouriteItems {
    return _items.where((element) => element.isFavourite).toList();
  }

  Destination findBy(String pId) {
    return items.firstWhere((pdc) => pdc.id == pId);
  }

  List<Destination> fetchHotDestinations() {
    return _items.where((element) => element.isPopular == true).toList();
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

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
          "https://drive.google.com/uc?export=view&id=1bR6w-myimhOsQxClJpCfkKLf2EiPnpt5",
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
          "https://drive.google.com/uc?export=view&id=1Jv8odJR2TaprN9RpjqlmSu5lDlVOBUQO",
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
          "AMAZING BEACHES, MAJESTIC CARNIVA, THRILLING WATERSPORTS, SPOTTING DOLPHINS, etc.",
      description:
          "Goa is one of the most favorite destination among Indian tourists due to its pristine beaches. Dotted with hundreds of impressive beaches in Goa, the incredible coastline of more than 100 km offers beautiful views and serenity where tourists enjoy and relax in the Sun.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=121PweZh8CD4WQiCp4cdMIuTX4Tg_JHe3",
      reviews: [
        "Every beach has its specialty, beauty, and serenity where tourists enjoy their best.",
        "Ideal place for water sports and fun lovers like Jet skiing, Flyboarding, Kayaking, windsurfing, Banana riding, Bumper riding, Speed Boating, Parasailing, etc."
      ],
    ),

    Destination(
      isPopular: true,
      name: "Andaman \$ Nicobar",
      id: DateTime.now().toString(),
      summary:
          "The largest sea turtles in the world nest here and famous for beach holidays to trekking to marine wildlife and sea adventures",
      description:
          "Andaman Nicobar Islands is famous for its absolutely stunning beaches, rich biodiversity, beautiful marine ecosystem and tropical evergreen forests teeming with wildlife.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1kzCtJl6oSh8pe9uy8ayncdU3IpFS_AaL",
      reviews: [
        "It is the perfect destination for your family vacation or honeymoon or just to travel around. You can see only good things there.",
        "From Thrillophilia and after coming back from the trip, we could only say that it was just amazing. The overall journey with Thrillophilia was flawless."
      ],
    ),
  ];

  List<Destination> get items {
    return [..._items];
  }

  Destination fetchDestinationByName(String name) {
    return _items.firstWhere((element) => element.name.toLowerCase() == name.toLowerCase());
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

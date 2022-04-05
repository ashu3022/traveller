import 'dart:convert';
import 'package:flutter/material.dart';

import '../models/hotel.dart';

//ashish kaur..yeah
//oi hogaya maeina do attribute midify/add kiyae models ame jkr dekh lae...import '//price per person kae badlae price and image add kia';
//oi so raha h kia kita banaya?
//ban rha hai hotel he
//ash:delhi,bhopal,goa ye teen Destinations  kae hotels h ismae..
//okk broo
class HotelProvider with ChangeNotifier {
  List<Hotel> _items = [
    Hotel(
        name: "Goa Emporio",
        id: DateTime.now().toString(),
        rating: 4.8,
        price: 1500,
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        destination: "Goa",
        image:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fgoa-hotel&psig=AOvVaw1Nomo28gsiu-C-r0Jyee2k&ust=1649189203206000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCNjU_Nma-_YCFQAAAAAdAAAAABAD",
        address: "Drunken Road 777"),
    Hotel(
        destination: "Goa",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.6,
        id: DateTime.now().toString(),
        name: "Sagar Gaire",
        address: "Platinum PLaza,Kolar Road",
        price: 1100,
        image:
            "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Goa",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.6,
        id: DateTime.now().toString(),
        name: "Raj Mahal",
        address: "Platinum PLaza,Kolar Road",
        price: 950,
        image:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Goal",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.7,
        id: DateTime.now().toString(),
        name: "Vishwaratna",
        address: "Platinum PLaza,Kolar Road",
        price: 990,
        image:
            "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Goa",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.0,
        id: DateTime.now().toString(),
        name: "Mayur Hotel",
        address: "Platinum PLaza,Kolar Road",
        price: 750,
        image:
            "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Goa",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 3.8,
        id: DateTime.now().toString(),
        name: "Radison Blue",
        address: "Platinum PLaza,Kolar Road",
        price: 700,
        image:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Goa",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.4,
        id: DateTime.now().toString(),
        name: "Vivanta",
        address: "Platinum PLaza,Kolar Road",
        price: 2000,
        image:
            "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        name: "Hotel Ashirwad",
        id: DateTime.now().toString(),
        rating: 4.8,
        price: 1500,
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        destination: "Delhi",
        image:
            "https://image.winudf.com/v2/image1/Y29tLmFwcDNkd2FsbHBhcGVyaGQuaG90ZWx3YWxscGFwZXJfc2NyZWVuXzBfMTU2NzAyNTUzNV8wNDE/screen-0.jpg?fakeurl=1&type=.jpg",
        address: "Chandni Chowk"),
    Hotel(
        destination: "Delhi",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.6,
        id: DateTime.now().toString(),
        name: "Sagar Gaire",
        address: "Platinum PLaza,Kolar Road",
        price: 1100,
        image:
            "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Delhi",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.6,
        id: DateTime.now().toString(),
        name: "Raj Mahal",
        address: "Platinum PLaza,Kolar Road",
        price: 950,
        image:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Delhi",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.7,
        id: DateTime.now().toString(),
        name: "Vishwaratna",
        address: "Platinum PLaza,Kolar Road",
        price: 990,
        image:
            "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Delhi",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.0,
        id: DateTime.now().toString(),
        name: "Mayur Hotel",
        address: "Platinum PLaza,Kolar Road",
        price: 750,
        image:
            "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Delhi",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 3.8,
        id: DateTime.now().toString(),
        name: "Radison Blue",
        address: "Platinum PLaza,Kolar Road",
        price: 700,
        image:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Delhi",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.4,
        id: DateTime.now().toString(),
        name: "Vivanta",
        address: "Platinum PLaza,Kolar Road",
        price: 2000,
        image:
            "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        name: "Bhopal Placio",
        id: DateTime.now().toString(),
        rating: 4.8,
        price: 1500,
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        destination: "Bhopal",
        image: "https://wallpaperaccess.com/full/2690553.jpg",
        address: "Chetak Bridge,M.P Nagar"),
    Hotel(
        destination: "Bhopal",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.6,
        id: DateTime.now().toString(),
        name: "Sagar Gaire",
        address: "Platinum PLaza,Kolar Road",
        price: 1100,
        image:
            "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Bhopal",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.6,
        id: DateTime.now().toString(),
        name: "Raj Mahal",
        address: "Platinum PLaza,Kolar Road",
        price: 950,
        image:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Bhopal",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.7,
        id: DateTime.now().toString(),
        name: "Vishwaratna",
        address: "Platinum PLaza,Kolar Road",
        price: 990,
        image:
            "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Bhopal",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.0,
        id: DateTime.now().toString(),
        name: "Mayur Hotel",
        address: "Platinum PLaza,Kolar Road",
        price: 750,
        image:
            "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Bhopal",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 3.8,
        id: DateTime.now().toString(),
        name: "Radison Blue",
        address: "Platinum PLaza,Kolar Road",
        price: 700,
        image:
            "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
    Hotel(
        destination: "Bhopal",
        description:
            "Our hotel is packed with well furnished rooms with all basic ammenities and top quality hygiene and located in the heart of the city",
        rating: 4.4,
        id: DateTime.now().toString(),
        name: "Vivanta",
        address: "Platinum PLaza,Kolar Road",
        price: 2000,
        image:
            "https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
  ];

  List<Hotel> get items {
    return [..._items];
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

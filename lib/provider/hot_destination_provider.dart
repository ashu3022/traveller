import 'package:flutter/material.dart';

import './destination.dart';
import './location.dart';

class HotDestinationProvider with ChangeNotifier {
  List<Destination> _items = [
    Destination(
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
      subLocations: [
        Location(
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
          name: "Lower Lake",
          id: DateTime.now().toString(),
          summary: "Very beatiful lake situated at the heart of the city",
          description:
              "Upper Lake is the most significant lake of Bhopal commonly known as the Bhojtal. It’s the oldest human-made lake in the country that lies on the west of Bhopal. The locals also call it Bada Talab. Serving around 30 million gallons of water the lake is a primary source of potable water to the residents of the city.",
          imgUrl:
              "http://tourmet.com/wp-content/uploads/2014/10/Lower-Lake-Bhopal.jpg",
          reviews: [
            "The lake is Simply awesome and boating is soo beautiful overall must watch  place",
            "Beautiful place in Bhopal.  After reaching here, it seems that I have come somewhere on the edge of the sea.  This sight was so beautiful that I cannot tell.  When the light of the night on ,  the whole lake gets lit up with light. One another good thing about this lake is it is clean that maje it different from others."
          ],
        ),
        Location(
          name: "Van Vihar",
          id: DateTime.now().toString(),
          summary:
              "Beautiful ecosystem of diverse wildlife and natural habitation",
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
      ],
    ), //dummy for locations start from here
    Destination(
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
      subLocations: [
        Location(
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
          name: "Lower Lake",
          id: DateTime.now().toString(),
          summary: "Very beatiful lake situated at the heart of the city",
          description:
              "Upper Lake is the most significant lake of Bhopal commonly known as the Bhojtal. It’s the oldest human-made lake in the country that lies on the west of Bhopal. The locals also call it Bada Talab. Serving around 30 million gallons of water the lake is a primary source of potable water to the residents of the city.",
          imgUrl:
              "http://tourmet.com/wp-content/uploads/2014/10/Lower-Lake-Bhopal.jpg",
          reviews: [
            "The lake is Simply awesome and boating is soo beautiful overall must watch  place",
            "Beautiful place in Bhopal.  After reaching here, it seems that I have come somewhere on the edge of the sea.  This sight was so beautiful that I cannot tell.  When the light of the night on ,  the whole lake gets lit up with light. One another good thing about this lake is it is clean that maje it different from others."
          ],
        ),
        Location(
          name: "Van Vihar",
          id: DateTime.now().toString(),
          summary:
              "Beautiful ecosystem of diverse wildlife and natural habitation",
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
      ],
    ),
    Destination(
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
      subLocations: [
        Location(
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
          name: "Lower Lake",
          id: DateTime.now().toString(),
          summary: "Very beatiful lake situated at the heart of the city",
          description:
              "Upper Lake is the most significant lake of Bhopal commonly known as the Bhojtal. It’s the oldest human-made lake in the country that lies on the west of Bhopal. The locals also call it Bada Talab. Serving around 30 million gallons of water the lake is a primary source of potable water to the residents of the city.",
          imgUrl:
              "http://tourmet.com/wp-content/uploads/2014/10/Lower-Lake-Bhopal.jpg",
          reviews: [
            "The lake is Simply awesome and boating is soo beautiful overall must watch  place",
            "Beautiful place in Bhopal.  After reaching here, it seems that I have come somewhere on the edge of the sea.  This sight was so beautiful that I cannot tell.  When the light of the night on ,  the whole lake gets lit up with light. One another good thing about this lake is it is clean that maje it different from others."
          ],
        ),
        Location(
          name: "Van Vihar",
          id: DateTime.now().toString(),
          summary:
              "Beautiful ecosystem of diverse wildlife and natural habitation",
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
      ],
    ),
    Destination(
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
      subLocations: [
        Location(
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
          name: "Lower Lake",
          id: DateTime.now().toString(),
          summary: "Very beatiful lake situated at the heart of the city",
          description:
              "Upper Lake is the most significant lake of Bhopal commonly known as the Bhojtal. It’s the oldest human-made lake in the country that lies on the west of Bhopal. The locals also call it Bada Talab. Serving around 30 million gallons of water the lake is a primary source of potable water to the residents of the city.",
          imgUrl:
              "http://tourmet.com/wp-content/uploads/2014/10/Lower-Lake-Bhopal.jpg",
          reviews: [
            "The lake is Simply awesome and boating is soo beautiful overall must watch  place",
            "Beautiful place in Bhopal.  After reaching here, it seems that I have come somewhere on the edge of the sea.  This sight was so beautiful that I cannot tell.  When the light of the night on ,  the whole lake gets lit up with light. One another good thing about this lake is it is clean that maje it different from others."
          ],
        ),
        Location(
          name: "Van Vihar",
          id: DateTime.now().toString(),
          summary:
              "Beautiful ecosystem of diverse wildlife and natural habitation",
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
      ],
    ),
  ];

  List<Destination> get items {
    return [..._items];
  }
}

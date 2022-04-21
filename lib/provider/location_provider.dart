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
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4,
      name: 'Udayagiri Caves',
      id: DateTime.now().toString(),
      summary: "Archaeological site in Madhya Pradesh",
      description:
          "The Udayagiri Caves are twenty rock-cut caves near Vidisha, Madhya Pradesh from the early years of the 5th century CE. They contain some of the oldest surviving Hindu temples and iconography in India. They are the only site that can be verifiably associated with a Gupta period monarch from its inscriptions.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=18XPE8HDAYMFlNIaYi14u6073Wh59MROh",
      reviews: ["A Treasure for Scholars - History back to Centuries"],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.7,
      name: 'Tribal Museum',
      id: DateTime.now().toString(),
      summary: "Heritage museum & performance space",
      description:
          "Museum with a collection of tribal clothing, crafts & tools, plus a space for events & performances.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=18XPE8HDAYMFlNIaYi14u6073Wh59MROh",
      reviews: [
        "This place is a beauty!!!!",
        "Love the authenticity and the colours of all the different tribes."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.5,
      name: 'Manuabhan Tekri',
      id: DateTime.now().toString(),
      summary: "Architecture",
      description:
          "Manuabhan Tekri is located on a hill from where you have magnificent view of the city of lakes. You can use cable car, your own vehicle or walk the distance to reach at the top. There is a very beautiful jain temple located along side the takari. You will find the city spread all around the hill as far as you can see.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1cfbiEJB93a31yBG3X00n5rqmRXUEnAsA",
      reviews: [
        "Spent a beautiful evening.",
        "The sunset looks amazing from the hill top.",
        "The view of Upper lake and the airport view is really beautiful."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.2,
      name: 'Shaukat Mahal',
      id: DateTime.now().toString(),
      summary: "Indo-French palace building",
      description:
          "At a distance of 4 km from Bhopal Junction, Shaukat Mahal is a historical structure located in Bhopal, Madhya Pradesh. Situated at the entrance to the Chowk area, it is one of the most unique architectural marvels of Bhopal, and among the top places to visit in Bhopal. Shaukat Mahal was constructed in the 1830s as a wedding gift for Sikander Jehan Begum, the first full-fledged female ruler of Bhopal.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1XDoIHXaCiJeTWV9mWhbZA18WWbYV2gEs",
      reviews: [
        "Haritage tour of this city gives us a glimpse of rich history and culture."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.1,
      name: 'Sair Sapata',
      id: DateTime.now().toString(),
      summary: "Sprawling entertainment area with views",
      description:
          "Sair Sapata is a tourism and entertainment complex situated on the banks of the Upper Lake in Bhopal. Developed by the Madhya Pradesh State Tourism Development Corporation, it is spread over an area of 24.56 acres, and was inaugurated on 29 September 2011 by State Chief Minister.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1A5cb2r3otjVqBAmRqg89RGJL4s1KYHof",
      reviews: [
        "Enjoyed train ride, dashing car, boating.",
        "Swings and rides for children are also very nice.",
        "Nice place to visit especially for children...love to ride Toy Train..."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4,
      name: 'Sanchi Stupa',
      id: DateTime.now().toString(),
      summary: "",
      description:
          "Sanchi is a Buddhist complex, famous for its Great Stupa, on a hilltop at Sanchi Town in Raisen District of the State of Madhya Pradesh, India. It is located in 46 kilometres north-east of Bhopal, capital of Madhya Pradesh.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1A5cb2r3otjVqBAmRqg89RGJL4s1KYHof",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.5,
      name: 'Raja Bhoj Airport',
      id: DateTime.now().toString(),
      summary: "",
      description:
          "Raja Bhoj Airport is the primary airport serving Bhopal, capital of the Indian state of Madhya Pradesh. Named after the 10th century Paramara king Raja Bhoj, it is the second busiest airport in Madhya Pradesh after Devi Ahilya Bai Holkar Airport in Indore in terms of passenger movement and aircraft movement.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=153zK_-6B06DIu0E4vJVv57ZoCvnk29l-",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.4,
      name: 'Moti Masjid',
      id: DateTime.now().toString(),
      summary: "Mosque with a striking facade & towers",
      description:
          "A historical landmark, Moti Masjid bears stark resemblance to New Delhi’s Jama Masjid. It was built by Sikander Begum, then ruler of Bhopal, in 1860. Sikander Begum was an incredibly progressive and forward-thinking woman of her time, who commissioned roads, bridges and other monuments like the Moti Masjid to be built in Bhopal.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1DUJ9VSTSVCzSC20ReZWxw1M2sGSPxIg6",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.5,
      name: 'IG Manav Sangrahalaya',
      id: DateTime.now().toString(),
      summary: "Indoor & outdoor anthropology museum",
      description:
          "Indira Gandhi Rashtriya Manav Sangrahalaya or National Museum of Humankind or Museum of Man is an anthropology museum located in Bhopal, India, to present an integrated story of the evolution of man and culture with special reference to India. It spreads over an area of about 200 acres on the Shyamla Hills in the city. This museum depicts the story of mankind in time and space. Located on Bhopal's upper lake, 'Rashtriya Manav Sangrahalaya' can be accessed either from Lake View Road or from another road near Demonstration School.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=14RTbXJROafHL64Bt86oUK_bHV_qIaaim",
      reviews: [
        "Tribal culture and habitat exihibites very well",
        "We can see ancient utensils culture.",
        "Plus it also aims to present to us the details of our evolution."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.6,
      name: 'Birla Mandir and Museum',
      id: DateTime.now().toString(),
      summary: "Temple dedicated to Lakshmi & Vishnu",
      description:
          "The museum has great collection of sculptures of Lord Shiva and Devi. Apart from this there are many sculptures depicting Indian gods and goddesses in the open air gallery outside. The museum also has collection of old Indian locks, dolls and some other interesting items. Photography is allowed on payment of small fee. The musem is located next to the Birla temple.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1MVqihmZ1SrLs2V7BYOjjjCV7pRhB-rEM",
      reviews: [
        "You will feel beautiful from your eternal side.",
        "Its a hindus temple and also a awesome bis museum....."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Bhopal',
      rating: 4.5,
      name: 'Bhimbetka Caves',
      id: DateTime.now().toString(),
      summary: "",
      description:
          "The Bhimbetka rock shelters are an archaeological site in central India that spans the Paleolithic and Mesolithic periods, as well as the historic period. It exhibits the earliest traces of human life in India and evidence of Stone Age starting at the site in Acheulian times.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1u7poppg3Qzbg239G8lqMOBT0aVPcP-o7",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.8,
      name: "Radhanagar Beach",
      id: DateTime.now().toString(),
      summary: "Tree-lined staple for swimming & diving",
      description: "Tree-lined staple for swimming & diving",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1gJplY-BE3RVlalMHwJmTZGOa_yBEIIg_",
      reviews: [
        "A lovely place with clean-water. One can enjoy all day.",
        "Easily accessible from jetty by rentals cars/bikes.",
        "Nice beach....changing room also available...locker available..."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.5,
      name: 'Mahatma Gandhi Marine National Park',
      id: DateTime.now().toString(),
      summary: "Protected islands with coral reefs",
      description:
          "Mahatma Gandhi Marine National Park is a national park of India near Wandoor on the Andaman Islands. It belongs to the South Andaman administrative district, part of the Indian union territory of Andaman and Nicobar Islands.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1vhz49jhJNAFFUIoC_ssF0CNsja8fljil",
      reviews: [
        "Beautiful island that has beautiful corals and marine life.",
        "Nice corals and lot of variety of Fishes..",
        "The undersea life here is breathtakingly beautiful."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.5,
      name: "Chidiya Tapu Beach",
      id: DateTime.now().toString(),
      summary: "Good place to visit sunsets!",
      description: "Small beach known for scenic sunsets",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=13enHbB9lwMzSO5B8_kmse4tEKundVQKB",
      reviews: [
        "Beautiful Scenic beach, you can enjoy here for sure.",
        "A nice clean beach which is also a natural habitat of crocodiles."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.5,
      name: "Mount Harriet National Park",
      id: DateTime.now().toString(),
      summary: "Forested park with wildlife & views",
      description:
          "Mount Harriet National Park is a national park located in the Andaman and Nicobar Islands union territory of India. The park, established in 1969, covers about 4.62 km². Mount Harriet, which is part of the park, is the third-highest peak in the Andaman and Nicobar archipelago next to Saddle Peak in North Andaman and Mount Thullier in Great Nicobar.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=15qGJFSGNm7rIHgQWjeuon6T1OHCNg9Hg",
      reviews: [
        "The flower garden here is so beautiful.",
        "nice place to watch birds and view different island on a clear day.",
        "The gardens are really good for photography and clicking your own picture."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.3,
      name: "Barren Island",
      id: DateTime.now().toString(),
      summary: "Volcanic island for diving & fishing",
      description:
          "Barren Island is an island located in the Andaman Sea. It is the only confirmed active volcano in the Indian subcontinent, and the only active volcano along a chain of volcanoes from Sumatra to Myanmar. It is a part of the Indian Union territory of Andaman and Nicobar Islands, and lies about 138 km northeast of the territory's capital, Port Blair.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=19pxMN8vlkVtikDtLnE2VuJ8coW-MbY13",
      reviews: [
        "Awesome place for tourism.",
        "One & Only Active Volcano Of India.",
        "It is a wonderful experience to watch the volcano spitting out lave and flames."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.2,
      name: "Zonal Anthropological Museum",
      id: DateTime.now().toString(),
      summary: "Exhibits on indigenous island culture",
      description: "Exhibits on indigenous island culture",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1HtUN0g20r6i6XKeyjWmC-_41OGZH-1A0",
      reviews: [
        "This is must see places for all tourist who want to see jaroa tribes here."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.4,
      name: "Wandoor Beach",
      id: DateTime.now().toString(),
      summary: "Swimming outpost at a serene park",
      description: "Swimming outpost at a serene park",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1tmJ77YusCCTHSwPmctpCBj513n4qBXlA",
      reviews: [
        "One of the best beaches to visit.Very beautiful views with very less visitors.Neat and clean beach.",
        "Serene pristine clear water and calmness...Sunsets are always beautiful here...",
        "One of the beautiful beaches in Andaman and Nicobar islands. Loved the sunset here."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.6,
      name: "Natural bridge",
      id: DateTime.now().toString(),
      summary: "",
      description:
          "The Natural bridge formation in Neil Island is a rock jutting out from the main wall with a giant hole in it created by the continuous lashing waves over the years. The wall alongside bore the brunt of the Tsunami in the year 2004 and protected Neil Island from devastation. In the far corner, another natural bridge formation is underway. The bridge is also known as Howrah Bridge locally, a name given in jest by the Bengali settlers.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1yZm-cVf8B8_91MDSH2dgba50-syufKIr",
      reviews: [
        "Very beautiful....different types of corals & sea animals are found...",
        "During low tide, there is so much to explore...",
        "It is a great place to see live corals, and other marine life."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.3,
      name: "North Bay",
      id: DateTime.now().toString(),
      summary: "",
      description: "Verdant island with water sports",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1zTd_a9T_nZrKY6vaDGRnaZYg320MGXHN",
      reviews: [
        "Nice beach, has watersports and scuba Snorkeling as well.",
        "Grt place, snorkeling must do..."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.4,
      name: "Limestone cave baratang",
      id: DateTime.now().toString(),
      summary: "",
      description: "Limestone caves in lush surrounds",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1IYtWVRD4eE0_idiUR7YPTYLsE-h2nJmy",
      reviews: [
        "Watching these lime stone caves are amazing experience.",
        "Going on a boat through mangrove s is fascinating."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Andaman and Nicobar Island',
      rating: 4.7,
      name: "North Reef Island",
      id: DateTime.now().toString(),
      summary: "Excellent",
      description:
          " North Reef Island is an island of the Andaman Islands. It belongs to the North and Middle Andaman administrative district, part of the Indian union territory of Andaman and Nicobar Islands. The island lies 156 km north from Port Blair.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=19JtsQrChSk6MPFeKbEYftc9IBzmp4sDt",
      reviews: [],
    ),
    Location(
      price: 400,
      isPopular: true,
      dName: 'Goa',
      rating: 4.6,
      name: "Dudhsagar Falls",
      id: DateTime.now().toString(),
      summary: "Excellent",
      description:
          "Dudhsagar Falls is a four-tiered waterfall located on the Mandovi River in the Indian state of Goa. It is 60 km from Panaji by road and is located on the Belgavi–Vasco Da Gama rail route about 46 km east of Madgaon and 80 km south of Belgavi. Dudhsagar Falls is amongst India's tallest waterfalls with a height of 310 m and an average width of 30 metres.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1b0OlOaDPxB62NySJlhDMm4UxoFyF2E5I",
      reviews: [
        "Cost of ticket is not overpriced.",
        "The swim with the life jacket is brilliant."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.2,
      name: "Aguada Fort",
      id: DateTime.now().toString(),
      summary: "17th-century fortress & lighthouse",
      description:
          "Fort Aguada is a well-preserved seventeenth-century Portuguese fort, along with a lighthouse, standing in Goa, India, on Sinquerim Beach, overlooking the Arabian Sea. It is an ASI protected Monument of National Importance in Goa.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1v2Q1nElOzNnXzeFWUkehLILQrD9yanpZ",
      reviews: ["Light house looks nice too.", "The ocean looks so terrific."],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.5,
      name: "Basilica of Bom Jesus",
      id: DateTime.now().toString(),
      summary: "UNESCO-listed Baroque Catholic church",
      description:
          "The Basilica of Bom Jesus is a Roman Catholic basilica located in the Goa state, situated in the Konkan region of India. It is both a pilgrimage centre and also the most iconic monument of all the churches and convents of Goa, recognised by UNESCO as a World Heritage Site. The basilica is located in Old Goa, former capital of Portuguese India, and holds the mortal remains of St Francis Xavier. Bom Jesus is the name used for the Ecce Homo in countries of the Lusosphere.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1ch_SJuwE1n-E80EKgrAIZTLeLntMJOsq",
      reviews: [
        "Even after 400 years of his death, the remains are in a good condition."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.5,
      name: "Anjuna Beach",
      id: DateTime.now().toString(),
      summary: " Lively beach with water sport options",
      description: " Lively beach with water sport options",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1DKa9SpQAuYEFSlzBkiqRehk17ROw4-rE",
      reviews: [
        "Nice shacks to chill out, especially after sunset.",
        "The flea market is an absolute marvel and pleausre..."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.6,
      name: "Palolem Beach",
      id: DateTime.now().toString(),
      summary: "Calm waters, nightlife & Canacona Island",
      description:
          "Palolem Beach is situated in Canacona in southern Goa, India. The beach attracts many international tourists, mainly during the winter season between November and March. It is considered to be one of the region's most beautiful beaches.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1p_WJ2pTxVisOG1MwdjvFdBiTk-qwklSy",
      reviews: [
        "The shacks are cool too.",
        "Nice and clean beach, must try kayaking here.",
        "very good place for honeymoon couple."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.4,
      name: "Calangute Beach",
      id: DateTime.now().toString(),
      summary: "Busy, sizable place with water sports",
      description: "",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1fHSPKxuUhvHQUid1OFZhwG8Eh0uKnzEP",
      reviews: [
        "The shacks looks stunning during evening with beautiful lights.",
        "Love to do parasailing here...",
        "Night life is also stunning."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.5,
      name: "baga Beach",
      id: DateTime.now().toString(),
      summary: "Popular beach known for its nightlife",
      description: "",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1l-41DRaPaTsR24EZaI1q4JwYhXgtxbHp",
      reviews: [
        "If you are a party lover then you musr go to this place.",
        "What a lovely night lofe at there.",
        "The shacks made it even more attractive."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.2,
      name: "Chapora Fort",
      id: DateTime.now().toString(),
      summary: "Hilltop ruins with ocean sunset views",
      description:
          "Chapora Fort, located in Bardez, Goa, rises high above the Chapora River. The site was the location of a fort built by Muslim ruler Adil Shah called Shahpura, whose name the Portuguese altered to Chapora. It is now become a popular tourist spot and offers a view north across the Chapora river to Pernem, south over Vagator and also far out to the Arabian Sea in the West.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1PMviZu9pEV8RGTre-h99Fqx7hbC08-Us",
      reviews: [
        "You can enjoy a perfect sunset here.",
        "Beach seems awesome at this height.",
        "Must visit place at evenings."
      ],
    ),
    Location(
      price: 1250,
      isPopular: true,
      dName: 'Goa',
      rating: 4.3,
      name: "Deltin Royale Casino",
      id: DateTime.now().toString(),
      summary: "Offshore casino with floor shows & eats",
      description:
          "Asia's largest gaming and entertainment destination, Deltin Royale offers an extraordinary gaming experience, live entertainment and buffet meals. Rated as the Best Casino in India, Deltin Royale is a must-visit of every Goa trip! Covering over 50,000 sq. ft. of area, Deltin Royale holds close to 1000 gaming positions and exquisite venues for a swanky soiree or an opulent celebration",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1PMviZu9pEV8RGTre-h99Fqx7hbC08-Us",
      reviews: [
        "You feel like u have entered a glamourous world and the cruise is a beauty!!",
        "Great crowd is an off season on a Monday night!",
        "The food quality is amazing."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.2,
      name: "Harvalem Waterfalls",
      id: DateTime.now().toString(),
      summary: "",
      description: "Scenic waterfall with viewing areas",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1n0eQ9ZAYL-68HsmvcXxxWwzGDs1qj--q",
      reviews: [
        "The Mahadev temple is beautiful and waterfall is just so amazing.",
        "Nice caves close by too."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.4,
      name: "Immaculate Conception Church",
      id: DateTime.now().toString(),
      summary: "Old, Baroque-style Catholic church",
      description:
          "The Our Lady of the Immaculate Conception Church is located in Panjim, Goa, India. The Church conducts Mass every day in English, Konkani, and Portuguese. The colonial Portuguese Baroque style church was first built in 1541 as a chapel on a hill side overlooking the city of Panjim.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=17GWoT3PnkjY3y4MKT9iGqjUFK8J2oD1m",
      reviews: [
        "A perfect Bollywood spot which you have seen in many movies.",
        "The double way stairs gives very beautiful look.",
        "Shorts covering till your knees are allowed."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.5,
      name: "Se Cathedral",
      id: DateTime.now().toString(),
      summary: "Portuguese-built 16th-century cathedral",
      description:
          "The Sé Catedral de Santa Catarina, known as Se Cathedral, is the cathedral of the Latin Rite Roman Catholic Archdiocese of Goa and Daman and the seat of the Patriarch of the East Indies. It is part of the World Heritage Site, Churches and convents of Goa located in Old Goa, India.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1mwmFgWLW1ra9BMilWc_MVg1AA7_fsYtE",
      reviews: [
        "No doubt you have to dress modestly, since it's a cathedral.",
        "One of the finest heritage site of India."
      ],
    ),
    Location(
      price: 520,
      isPopular: true,
      dName: 'Goa',
      rating: 3.7,
      name: "Splashdown Waterpark",
      id: DateTime.now().toString(),
      summary: "",
      description: "Playful place with pools & waterslides",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=16nUkfEGXcEZWL3o9KVaEq8woJwAvwx8q",
      reviews: [
        "Any one wants to waste their money, this will be a nice place to them.",
        "better go to the beach and try water sport.",
        "You go with nylon clothing other wise you have to rent from them."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Goa',
      rating: 4.7,
      name: "Sri Mahadeva Temple Tambisurla",
      id: DateTime.now().toString(),
      summary: "Ancient Hindu temple carved from stone",
      description:
          "Mahadeva Temple, Tambdi Surla is a 12th-century Shaivite temple in the Kadamba style dedicated to Lord Shiva and an active place of Hindu worship. It is an ASI protected Monument of National Importance in Goa.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1HwqT7ML7iGSji_rLW3YSLRtI8T9IN8B5",
      reviews: [
        "Very beautiful temple located in middle of forest.",
        "Its really beautiful place surrounding with cool environment n waterfall.",
        "Best place to visit and to see the antique rock monument of 12th century."
      ],
    ),
    Location(
      price: 35,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.4,
      name: "Red Fort",
      id: DateTime.now().toString(),
      summary: "Iconic 1600s imperial residence & museum",
      description:
          "The Red Fort or Lal Qila is a historic fort in Old Delhi, Delhi in India that served as the main residence of the Mughal Emperors. Emperor Shah Jahan commissioned construction of the Red Fort on 12 May 1638, when he decided to shift his capital from Agra to Delhi. Originally red and white, its design is credited to architect Ustad Ahmad Lahori, who also constructed the Taj Mahal. The fort represents the peak in Mughal architecture under Shah Jahan, and combines Persianate palace architecture with Indian traditions.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1GvTY4OW9e5NZ5-AV4AfK7V6r8s4L0ygf",
      reviews: [],
    ),
    Location(
      price: 50,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.7,
      name: "Rashtrapati Bhawan",
      id: DateTime.now().toString(),
      summary: "President's official home, with museum",
      description:
          "The Qutub Minar, also spelled as Qutb Minar and Qutab Minar, is a minaret and victory tower that forms part of the Qutb complex, which lies at the site of Delhi’s oldest fortified city, Lal Kot, founded by the Tomar Rajputs. It is a UNESCO World Heritage Site in the Mehrauli area of South Delhi, India. It is one of the most visited tourist spots in the city, mostly built between 1199 and 1220. It can be compared to the 62-metre all-brick Minaret of Jam in Afghanistan, of c. 1190, which was constructed a decade or so before the probable start of the Delhi tower.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1prTqRtq72J1DSLJ8vDYmJ7OYpuvSAUIm",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.4,
      name: "Raj Ghat",
      id: DateTime.now().toString(),
      summary: "Simple marble memorial to Mahatma Gandhi",
      description:
          "Raj Ghat is a memorial dedicated to Mahatma Gandhi in Delhi, India. Originally it was the name of a historic ghat of Old Delhi. Close to it, and east of Daryaganj was Raj Ghat Gate of the walled city, opening at Raj Ghat to the west bank of the Yamuna River. Later the memorial area was also called Raj Ghat. It is a black marble platform that marks the spot of Mahatma Gandhi's cremation, Antyeshti on 31 January 1948, a day after his assassination.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1oFBBSd0eVFZy2cRmi15qdZAXrUjrtAD1",
      reviews: [],
    ),
    Location(
      price: 35,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.2,
      name: "Qutub Minar",
      id: DateTime.now().toString(),
      summary: "Landmark brick minaret amid monuments",
      description:
          "The Qutub Minar, also spelled as Qutb Minar and Qutab Minar, is a minaret and victory tower that forms part of the Qutb complex, which lies at the site of Delhi’s oldest fortified city, Lal Kot, founded by the Tomar Rajputs. It is a UNESCO World Heritage Site in the Mehrauli area of South Delhi, India. It is one of the most visited tourist spots in the city, mostly built between 1199 and 1220.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1S7q88QdnEC9Og1IIWt4ie0Hz5liuJC3M",
      reviews: [],
    ),
    Location(
      price: 15,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.2,
      name: "Purana Qila",
      id: DateTime.now().toString(),
      summary: "Riverside fortress with Mugal-era gates",
      description:
          "Purana Qila is one of the oldest forts in Delhi, India. Built by the second Mughal Emperor Humayun and Surid Sultan Sher Shah Suri, it is thought by many to be located on the site of the ancient city of Indraprastha. The fort formed the inner citadel of the city of Dinpanah. It is located near the expansive Pragati Maidan exhibition ground and is separated from the Dhyanchand Stadium by the Mathura Road, Delhi.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1ySc1mDUyn2ZJyDKJUaYrk9AD2YZf7bsL",
      reviews: [
        "Greenary sounds better here and peaceful surroundings can never let you down.",
        "Great monuments built by Sher Shah Suri.",
        "The place is amazing as there is a zoo nearby and u can enjoy boating as well."
      ],
    ),
    Location(
      price: 50,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.4,
      name: "National Rail Museum",
      id: DateTime.now().toString(),
      summary: "Museum for Indian railway history",
      description:
          "The National Rail Museum in Chanakyapuri, New Delhi, displays exhibits on the history of rail transport in India. The museum was inaugurated on 1 February 1977. The museum spans over an area of over 11 acres and the indoor gallery comprises an octagonal building which houses six display galleries and a large open area is laid out to simulate the atmosphere of a railway yard. It is open every day except Mondays and national holidays.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1JkNdtAoqtcV9wKz9O6qfuQ46R-rCJ6Tr",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.2,
      name: "Sarojini Market",
      id: DateTime.now().toString(),
      summary: "Market for clothes & fashion accessories",
      description:
          "Sarojini Nagar is a neighbourhood in South West Delhi district of Delhi, India. It was one of the sites of the 29 October 2005 Delhi bombings. It is close to Safdarjung Airport, starting 2010, it is serviced by the Sarojini Nagar on the newly constructed underground station on the Pink Line of Delhi Metro.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=17vfLnxrCijsH0ROsS5WOq4E2KpCHNosX",
      reviews: [],
    ),
    Location(
      price: 80,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.1,
      name: "National Zoological Park",
      id: DateTime.now().toString(),
      summary: "Sprawling zoo known for its white tigers",
      description:
          "The National Zoological Park is a 176-acre zoo in New Delhi, India. A 16th-century citadel, a sprawling green island and a motley collection of animals and birds, all in the middle of a burgeoning urban Delhi. The zoo is home to about 1350 animals representing almost 130 species of animals and birds from around the world.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1RUs2KS3ynmm37Npr88gPJFx1H3JdTBCl",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.6,
      name: "India Gate",
      id: DateTime.now().toString(),
      summary: "1920s triumphal arch & war memorial",
      description:
          "The India Gate is a war memorial located astride the Rajpath, on the eastern edge of the ceremonial axis of New Delhi, formerly called Kingsway. It stands as a memorial to 90,000 soldiers of the British Indian Army who died in between 1914 and 1921 in the First World War, in France, Flanders, Mesopotamia, Persia, East Africa, Gallipoli and elsewhere in the Near and the Far East, and the Third Anglo-Afghan War.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1SiY5vJaNapKYERGHvO-AyZ60eTmM4YNi",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.8,
      name: "Iskcon Temple",
      id: DateTime.now().toString(),
      summary: "Temple and architecture",
      description:
          "Sri Sri Radha Parthasarathi Mandir, generally known as the ISKCON Delhi temple, is a well known Vaishnav temple of Lord Krishna and goddess Radha in the form of Radha Parthasarathi. The Temple was inaugurated on 5 April, 1998 by the then former Prime Minister of India Atal Bihari Vajpayee in the presence of former Chief Minister of Delhi Sahib Singh Verma and Sushma Swaraj. It is located at Hare Krishna Hills, in the East of Kailash area of New Delhi, India.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1g_gRr48V7PzBJiqQT0ViHK0ecVMiEY85",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.6,
      name: "Jama Masjid",
      id: DateTime.now().toString(),
      summary: "Vast, 17th-century Mughal-style mosque",
      description:
          "The Masjid e Jahan Numa, commonly known as the Jama Masjid of Delhi, is one of the largest mosques in India. It was built by the Mughal Emperor Shah Jahan between 1650 and 1656 at a cost of one million rupees, and was inaugurated by Imam Syed Abdul Ghafoor Shah Bukhari from Bukhara, present-day Uzbekistan.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1qhu_zvheU33oZb644hQ2OLaphqKI5Pl9",
      reviews: [],
    ),
    Location(
      price: 15,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.1,
      name: "Jantar Mantar",
      id: DateTime.now().toString(),
      summary: "18th-century astronomy complex",
      description:
          "Jantar Mantar is located in the modern city of New Delhi. “Jantar Mantar” literally means “instruments for measuring the harmony of the heavens”. It consists of 13 architectural astronomy instruments. The site is one of five built by Maharaja Jai Singh II of Jaipur, from 1723 onwards, revising the calendar and astronomical tables. Jai Singh, born in 1688 into a royal Rajput family that ruled the regional kingdom, was born into an era of education that maintained a keen interest in astronomy.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1Va49XMpRF0_D2WuWh3ic9T04nGvKXe47",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.5,
      name: "Lodhi Garden",
      id: DateTime.now().toString(),
      summary: "80-acre city park inaugurated in 1936",
      description:
          "Lodi Gardens is a city park situated in New Delhi, India. Spread over 90 acres, it contains, Mohammed Shah's Tomb, Tomb of Sikandar Khan Lodi, Shisha Gumbad and Bara Gumbad, architectural works of the 15th century by Lodis - who ruled parts of northern India and Punjab and Khyber Pakhtunkhwa province of modern-day Pakistan, from 1451 to 1526. The site is now protected by the Archaeological Survey of India.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1pg5aBeRZKmcU4mzm5r8RoIwe9neehruG",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.5,
      name: "Lotus Temple",
      id: DateTime.now().toString(),
      summary: "Temple with a flower-like design",
      description:
          "The Lotus Temple, located in Delhi, India, is a Baháʼí House of Worship that was dedicated in December 1986. Notable for its flowerlike shape, it has become a prominent attraction in the city. Like all other Bahai Houses of Worship, the Lotus Temple is open to all, regardless of religion or any other qualification. The building is composed of 27 free-standing marble-clad 'petals' arranged in clusters of three to form nine sides, with nine doors opening onto a central hall with a height of slightly over 34 meters and a capacity of 1,300 people.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1EEe-cfPP_QHWwVK79McfNEINUXXN1_UR",
      reviews: [],
    ),
    Location(
      price: 960,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.3,
      name: "Madame Tussauds",
      id: DateTime.now().toString(),
      summary: "Museum with wax replicas of celebrities",
      description:
          " Madame Tussauds Delhi is a wax museum and tourist attraction located on Regal Theatre in New Delhi, India.It is the twenty third location for the Tussauds, which was set up by sculptor Marie Tussaud. Madame Tussauds is owned and operated by Merlin Entertainments.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1I6cWvYm-nyNIK7rYB0AovPO6_fAo3tL7",
      reviews: [],
    ),
    Location(
      price: 20,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.6,
      name: "National Museum",
      id: DateTime.now().toString(),
      summary: "Museum spanning India's human history",
      description:
          "The National Museum in New Delhi, also known as the National Museum of India, is one of the largest museums in India. Established in 1949, it holds a variety of articles ranging from pre-historic era to modern works of art. It functions under the Ministry of Culture, Government of India. The museum is situated on Janpath. The blue–print of the National Museum had been prepared by the Gwyer Committee set up by the Government of India in 1946.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1YcF4oPL20OXIKBHku34lz0qGrOabmr32",
      reviews: [
        "The skeleton of a woman from Harappan Burial was another amazing experience.",
        "A very good place for making the kids get connected to the history of India.",
        "You will definitely love the Indian cultural Heritage."
      ],
    ),
    Location(
      price: 35,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.4,
      name: "Humayun's Tomb",
      id: DateTime.now().toString(),
      summary: "",
      description:
          "Humayun's tomb is the tomb of the Mughal Emperor Humayun in Delhi, India. The tomb was commissioned by Humayun's chief consort, Empress Bega Begum, in 1558, and designed by Mirak Mirza Ghiyas and his son, Sayyid Muhammad, Persian architects chosen by her. It was the first garden-tomb on the Indian subcontinent, and is located in Nizamuddin East, Delhi, India, close to the Dina-panah Citadel, also known as Purana Qila, that Humayun found in 1533.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1n0cEJJ9YnxHet84ZlQJECTEaPp96yrnc",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.3,
      name: "Dilli Haat",
      id: DateTime.now().toString(),
      summary: "Handicraft",
      description:
          "Dilli Haat is a paid-entrance open-air market, food plaza, and craft bazaar located in Delhi. The area is run by Delhi Tourism and Transportation Development Corporation, and unlike the traditional weekly market, the village Haat, Dilli Haat is permanent. It is located in the commercial centres of South Delhi, opposite INA market. The 6 acres of land on which this complex is situated was salvaged as part of a reclamation project and transformed into a plaza.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1CbLquzTjNN1qvXzuWXho23z0tvjbMb_A",
      reviews: [
        "Nice place to visit Handicraft items and vey nice food stall also.",
        "Moreover love the food stalls!",
        "Perfect place to have multi state cuisine...."
      ],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4,
      name: "Connaught Place",
      id: DateTime.now().toString(),
      summary: "Janpath Market & classic Indian food",
      description:
          "Connaught Place is a frenetic business and financial hub, centered on a ring of colonnaded Georgian-style buildings with global chain stores, vintage cinemas, bars and Indian restaurants. Stalls at Janpath Market sell saris, embroidered bags and trinkets.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1H3MvRYIFtRcBlwhhHu8XteIJGA6f8sEM",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.6,
      name: "Chandni Chowk",
      id: DateTime.now().toString(),
      summary: "Red Fort & crowded, colorful markets",
      description:
          " In the heart of Old Delhi, Chandni Chowk is a busy shopping area with markets full of spices, dried fruit, silver jewelry and vivid saris, while the narrow side streets are crowded with tiny shops selling essential oils, stationery and traditional Indian sweets.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1WYi0RgBHXUmtBpPzGz6cAvxiDNPdDVSf",
      reviews: [],
    ),
    Location(
      price: 0,
      isPopular: true,
      dName: 'Delhi',
      rating: 4.8,
      name: "Shri Bangla Sahib Gurudwara",
      id: DateTime.now().toString(),
      summary: "Sikh religious site with healing waters",
      description:
          "Gurudwara Bangla Sahib is one of the most prominent Sikh gurdwara, or Sikh house of worship, in Delhi, India, and known for its association with the eighth Sikh Guru, Guru Har Krishan, as well as the holy pond inside its complex, known as the 'Sarovar.'",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1T6hAkASBA8aYHr9xBbFep07Eupt2NMap",
      reviews: [
        "Looks beautiful at both day and night.",
        "Awesome pond with nice fishes.",
        "A lovely sarovar is also there."
      ],
    ),
    Location(
      price: 1200,
      isPopular: true,
      dName: 'Delhi',
      rating: 3.7,
      name: "Atlantic Water World",
      id: DateTime.now().toString(),
      summary: "",
      description:
          "The Delhi Eye transportable Ferris wheel installation at Kalindi Kunj Park in the Okhla neighbourhood of Delhi, India, opened to the public in October 2014. The wheel can carry six passengers, from which Akshardham Temple, Humayun's Tomb, Lotus Temple, Qutb Minar and Red Fort are visible on a clear day.",
      imgUrl:
          "https://drive.google.com/uc?export=view&id=1BwQB0wpUOYD_lV7GetDDfcS8ggyR7Gxk",
      reviews: [
        "Very well maintained and good service and very in the place with my family.",
        "Nice place to weekend hangout but bit small place."
      ],
    )
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

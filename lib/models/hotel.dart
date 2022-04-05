class Hotel {
  final String name;
  final String id;
  final double rating;
  final double price;
  final String description;
  final String destination;
  bool isFavourite = false;
  final String image;
  final String address;

  Hotel({
    required this.name,
    required this.id,
    required this.rating,
    required this.price,
    required this.description,
    required this.destination,
    required this.image,
    required this.address,
  });
}

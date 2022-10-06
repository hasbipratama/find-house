class Space {
  int id = 0;
  String imageurl = '';
  String namespace = '';
  int pricespace = 0;
  String city = '';
  String country = '';
  int rating = 0;
  String address = '';
  String phone = '';
  String mapurl = '';
  List photos = [];
  int numberofkitchen = 0;
  int numberofbedroom = 0;
  int numberofcupboard = 0;

  Space({
    required this.id,
    required this.imageurl,
    required this.namespace,
    required this.pricespace,
    required this.city,
    required this.rating,
    required this.country,
    required this.address,
    required this.phone,
    required this.mapurl,
    required this.photos,
    required this.numberofkitchen,
    required this.numberofbedroom,
    required this.numberofcupboard,
  });

  Space.fromJson(json) {
    id = json['id'];
    imageurl = json['image_url'];
    namespace = json['name'];
    pricespace = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapurl = json['map_url'];
    photos = json['photos'];
    numberofkitchen = json['number_of_kitchens'];
    numberofbedroom = json['number_of_bedrooms'];
    numberofcupboard = json['number_of_cupboards'];
  }
}

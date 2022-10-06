class Space {
  int id = 0;
  String imageurl = '';
  String namespace = '';
  String pricespace = '';
  String city = '';
  String country = '';
  String rating = '';
  String address = '';
  String phone = '';
  String mapurl = '';
  String photos = '';
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
    imageurl = json['imageurl'];
    namespace = json['namespace'];
    pricespace = json['pricespace'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapurl = json['mapurl'];
    photos = json['photos'];
    numberofkitchen = json['numberofkitchen'];
    numberofbedroom = json['numberofbedroom'];
    numberofcupboard = json['inumberofcupboardd'];
  }
}

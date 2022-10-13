class details_model {
  String imagedetails;
  String spacename;
  String price;
  String address;
  String city;
  int numberofkitchen;
  int numberofbedroom;
  int numberofcupboard;

  details_model({
    this.imagedetails = '',
    this.spacename = '',
    this.price = '',
    this.city = '',
    this.address = '',
    required this.numberofkitchen,
    required this.numberofbedroom,
    required this.numberofcupboard,
  });
}

class City {
  int id;
  String name;
  String imageurl;
  bool ispopuler;

  City({
    required this.id,
    required this.imageurl,
    required this.name,
    this.ispopuler = false,
  });
}

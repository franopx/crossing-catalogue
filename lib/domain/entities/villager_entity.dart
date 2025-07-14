class Villager {
  String name;
  String species;
  String personality;
  String birthmonth;
  List<String> styles;
  List<String> colors;
  String hobby;
  String imageUrl;

  Villager(
    this.name,
    this.species,
    this.personality,
    this.birthmonth,
    this.styles,
    this.colors,
    this.hobby,
    this.imageUrl,
  );

  factory Villager.fromJson(Map<String, dynamic> json) {
    final nh = json['nh_details'] ?? {};

    return Villager(
      json['name'] ?? '',
      json['species'] ?? '',
      json['personality'] ?? '',
      json['birthday_month'] ?? '',
      List<String>.from(nh['fav_styles']) ?? [],
      List<String>.from(nh['fav_colors']) ?? [],
      nh['hobby'],
      json['image_url'],
    );
  }
}

import 'package:crossing_catalogue/domain/entities/collection_entity.dart';

class Fish extends Collection {
  String month;
  String location;
  String shadowSize;
  String imageUrl;

  Fish(super.name, this.month, this.location, this.shadowSize, this.imageUrl);
}

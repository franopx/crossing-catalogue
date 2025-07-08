import 'package:crossing_catalogue/domain/entities/collection_entity.dart';

class Bug extends Collection {
  String month;
  String location;
  String weather;
  String imageUrl;

  Bug(super.name, this.month, this.location, this.weather, this.imageUrl);
}

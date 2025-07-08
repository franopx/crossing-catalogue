import 'package:crossing_catalogue/domain/entities/collection_entity.dart';

class SeaCreature extends Collection {
  String month;
  String shadowSize;
  String shadowMovement;
  String imageUrl;

  SeaCreature(
    super.name,
    this.month,
    this.shadowSize,
    this.shadowMovement,
    this.imageUrl,
  );
}

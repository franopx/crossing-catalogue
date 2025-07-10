import 'dart:convert';
import 'package:crossing_catalogue/domain/entities/villager_entity.dart';
import 'package:crossing_catalogue/services/api_service.dart';
import 'package:logger/web.dart';

class VillagerList {
  var villagerRequest = ServiceVillager('');
  var villagerJson = '';
  final villagerList = <Villager>[];

  //var logger = Logger();

  Future<List<Villager>> getJson() async {
    villagerJson = await villagerRequest.getVillager('game=nh&nhdetails=true');
    var parsedJson = jsonDecode(villagerJson);
    List<dynamic> villagerListJson = parsedJson;

    for (var villagerData in villagerListJson) {
      var name = villagerData['name'];
      var species = villagerData['species'];
      var personality = villagerData['personality'];
      var birthmonth = villagerData['birthday_month'];

      final nhDetailsData = villagerData['nh_details'];
      var styles = List<String>.from(nhDetailsData['fav_styles']);
      var colors = List<String>.from(nhDetailsData['fav_colors']);
      var hobby = nhDetailsData['hobby'];

      var imageUrl = villagerData['image_url'];

      Villager villager = Villager(
        name,
        species,
        personality,
        birthmonth,
        styles,
        colors,
        hobby,
        imageUrl,
      );

      villagerList.add(villager);
    }

    return villagerList;
  }
}


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
    villagerJson = await villagerRequest.getVillager('game=NH');
    var parsedJson = jsonDecode(villagerJson);
    List<dynamic> villagerListJson = parsedJson;

    for (var villagerData in villagerListJson) {
      var name = villagerData['name'];
      var species = villagerData['species'];
      var personality = villagerData['personality'];
      var imageUrl = villagerData['image_url'];
      


      Villager villager = Villager(name, species, personality, imageUrl);
      
      //logger.d(villager.name);

      villagerList.add(villager);
    }

    return villagerList;
  }
}
import 'dart:convert';
import 'package:crossing_catalogue/domain/entities/item_data_entity.dart';
import 'package:crossing_catalogue/services/api_service.dart';
import 'package:crossing_catalogue/services/items_api_service.dart';
import 'package:logger/web.dart';

class ItemList {
  var itemRequest = ServiceItems('');
  var allItems = <ItemData>[];

  var fishJson = '';
  var bugJson = '';
  var fossilJson = '';
  var seaCreatureJson = '';

  Map<String, String> itemsJson = {};

  final fishList = <ItemData>[];
  final bugList = <ItemData>[];
  final fossilList = <ItemData>[];
  final seaCreatureList = <ItemData>[];

  Future<List<ItemData>> getJson() async {
    
    var fishJsonRaw = await itemRequest.getItem('thumbsize=48', 'fish');
    fishJson = jsonDecode(fishJsonRaw);

    var bugJsonRaw = await itemRequest.getItem('thumbsize=48', 'bug');
    bugJson = jsonDecode(bugJsonRaw);
    
    var fossilJsonRaw = await itemRequest.getItem('thumbsize=48', 'fossil');
    fossilJson = jsonDecode(fossilJsonRaw);
    
    var seaCreatureJsonRaw = await itemRequest.getItem('thumbsize=48', 'seaCreature');
    seaCreatureJson = jsonDecode(seaCreatureJsonRaw);

    itemsJson = {
      'fish' : fishJson,
      'bug' : bugJson,
      'fossil' : fossilJson,
      'seaCreature' : seaCreatureJson
    };


    for (var categoryEntry in itemsJson.entries) {
      String category = categoryEntry.key;
      List<dynamic> itemList = categoryEntry.value as List<dynamic>;

      for(var itemEntry in itemList) {
        
        var name = itemEntry['name'];
        var type = itemEntry['type'];
        var url = itemEntry['url'];
        var imageUrl = itemEntry['image_url'];
        var renderUrl = itemEntry['render_url'];
        var obtained = itemEntry['obtained'];

        ItemData item = ItemData(name: name, type: type, url: url, renderUrl: renderUrl, imageUrl: imageUrl, obtained: obtained);
        
        allItems.add(item);
      }
    }

  return allItems;

  }
}
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ServiceVillager {
  String urlRequest;

  String apiKey = '8e0ee668-a857-4afa-a660-e6f80b4267f3';
  String villagerUrl = 'https://api.nookipedia.com/villagers';

  ServiceVillager(this.urlRequest);

  Future<String> getVillager(String searchQuery) async {
    final url = Uri.parse('$villagerUrl?api_key=$apiKey&$searchQuery');
    final response = await http.get(url);

    var logger = Logger();


    if(response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load villager.');
    }
  }

}
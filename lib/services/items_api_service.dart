import 'dart:convert';

import 'package:crossing_catalogue/domain/entities/villager_match_entity.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ServiceItems {
  String urlRequest;

  String apiKey = '8e0ee668-a857-4afa-a660-e6f80b4267f3';
  String fishUrl = 'https://api.nookipedia.com/villagers';
  Map<String, String> wikiUrl = {
    'fish' : 'https://api.nookipedia.com/nh/fish',
    'bug' : 'https://api.nookipedia.com/nh/bugs',
    'fossil' : 'https://api.nookipedia.com/nh/fossils/individuals',
    'seaCreature' : 'https://api.nookipedia.com/nh/sea'
  };

  ServiceItems(this.urlRequest);

  static const apiFilterableAttributes = [
    'personality',
    'birthday_month',
    'species',
  ];

  Map<String, String> buildApiFilters(Map<String, Map<String, int>> votes) {
    final result = <String, String>{};

    votes.forEach((attr, values) {
      if (!apiFilterableAttributes.contains(attr)) return;
      if (values.isEmpty) return;

      final top = values.entries.reduce((a, b) => a.value >= b.value ? a : b);
      result[attr] = top.key;
    });

    return result;
  }

  String buildSearchQuery(Map<String, String> filters) {
    return filters.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }


  Future<String> getItem(String searchQuery, String table) async {
    final url = Uri.parse('${wikiUrl[table]}?api_key=$apiKey&$searchQuery');
    final response = await http.get(url);

    var logger = Logger();

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load villager.');
    }
  }

  
}

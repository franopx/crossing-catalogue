import 'dart:convert';

import 'package:crossing_catalogue/domain/entities/villager_match_entity.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ServiceVillager {
  String urlRequest;

  String apiKey = '8e0ee668-a857-4afa-a660-e6f80b4267f3';
  String villagerUrl = 'https://api.nookipedia.com/villagers';

  ServiceVillager(this.urlRequest);

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

  int ScoreVillager(
    Map<String, dynamic> villager,
    Map<String, Map<String, int>> votes,
  ) {
    final nh = villager['nh_details'] ?? {};
    int score = 0;
    const attrs = ['hobby', 'fav_styles', 'fav_colors'];

    for (var attr in attrs) {
      if (!votes.containsKey(attr)) continue;
      final voteMap = votes[attr]!;

      if (nh[attr] is String) {
        score += voteMap[nh[attr]] ?? 0;
      } else if (nh[attr] is List) {
        for (var v in nh[attr]) {
          score += voteMap[v] ?? 0;
        }
      }
    }

    return score;
  }

  Future<List<VillagerMatch>> fetchAndRankVillager({
    required Map<String, Map<String, int>> votes,
  }) async {
    final filters = buildApiFilters(votes);
    final searchQuery = buildSearchQuery(filters);
    final url = Uri.parse('$villagerUrl?=$apiKey&$searchQuery');

    final response = await http.get(url);

    if (response.statusCode != 200) return [];

    final data = jsonDecode(response.body);
    if (data is! List || data.isEmpty) return [];

    final ranked = data
        .map<Map<String, dynamic>>((v) => Map<String, dynamic>.from(v))
        .map((villager) {
          final score = ScoreVillager(villager, votes);
          return VillagerMatch(villager: villager, score: score);
        })
        .toList();

    ranked.sort((a, b) => b.score.compareTo(a.score));

    return ranked;
  }

  Future<String> getVillager(String searchQuery) async {
    final url = Uri.parse('$villagerUrl?api_key=$apiKey&$searchQuery');
    final response = await http.get(url);

    var logger = Logger();

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load villager.');
    }
  }
}

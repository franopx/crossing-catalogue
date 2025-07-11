import 'dart:convert';

import 'package:crossing_catalogue/domain/entities/villager_entity.dart';
import 'package:crossing_catalogue/domain/entities/villager_match_entity.dart';
import 'package:flutter/foundation.dart';
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

  Future<List<Villager>> fetchAllVillagers() async {
    final url = Uri.parse(
      '$villagerUrl?api_key=$apiKey&game=nh&nhdetails=true',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return List<Map<String, dynamic>>.from(
        data,
      ).map((json) => Villager.fromJson(json)).toList();
    }

    return [];
  }

  Future<List<VillagerMatch>> fetchAndRankVillagers({
    required Map<String, Map<String, int>> votes,
  }) async {
    final allVillagers = await fetchAllVillagers();

    List<String> priorityOrder = [
      'birthmonth',
      'fav_colors',
      'fav_styles',
      'hobby',
      'species',
      'personality',
    ];

    List<VillagerMatch> ranked = [];
    Map<String, Map<String, int>> currentVotes = Map.from(votes);

    for (int i = 0; i < priorityOrder.length; i++) {
      ranked = allVillagers.map((v) {
        final score = scoreVillager(v, currentVotes);
        return VillagerMatch(villager: v, score: score);
      }).toList()..sort((a, b) => b.score.compareTo(a.score));

      if (ranked.any((m) => m.score > 0)) break;

      if (i < priorityOrder.length) {
        currentVotes.remove(priorityOrder[i]);
      }
    }
    if (ranked.isEmpty) {
      ranked = allVillagers
          .map((v) => VillagerMatch(villager: v, score: 0))
          .toList();
    }

    return ranked;
  }

  int scoreVillager(Villager v, Map<String, Map<String, int>> votes) {
    int score = 0;

    if (votes.containsKey('species')) {
      score += votes['species']![v.species] ?? 0;
    }

    if (votes.containsKey('personality')) {
      score += votes['personality']![v.personality] ?? 0;
    }

    if (votes.containsKey('birthmonth')) {
      score += votes['birthmonth']![v.birthmonth] ?? 0;
    }

    if (votes.containsKey('fav_styles')) {
      for (var style in v.styles) {
        score += votes['fav_styles']![style] ?? 0;
      }
    }

    if (votes.containsKey('fav_colors')) {
      for (var color in v.colors) {
        score += votes['fav_colors']![color] ?? 0;
      }
    }

    if (votes.containsKey('hobby')) {
      score += votes['hobby']![v.hobby] ?? 0;
    }

    return score;
  }
}

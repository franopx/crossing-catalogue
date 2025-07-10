import 'package:crossing_catalogue/domain/entities/question_entity.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  final bool isIslandQuiz;
  const QuestionWidget({super.key, required this.isIslandQuiz});

  @override
  State<StatefulWidget> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionWidget> {
  int currentQuestionIndex = 0;
  List<Question> questions = [];
  Map<String, Map<String, int>> attributeVotes = {};

  @override
  void initState() {
    super.initState();
    questions = widget.isIslandQuiz ? islandQuiz : personalityQuiz;
  }

  void handleAnswer(int selectedIndex) {
    final current = questions[currentQuestionIndex];
    final Map<String, Map<String, int>> effects =
        current.effects[selectedIndex];

    effects.forEach((attribute, valuesWithWeight) {
      attributeVotes.putIfAbsent(attribute, () => {});
      valuesWithWeight.forEach((value, weight) {
        attributeVotes[attribute]!.update(
          value,
          (count) => count + weight,
          ifAbsent: () => weight,
        );
      });
    });

    setState(() {
      currentQuestionIndex++;
    });
  }

  String buildSearchQuery(Map<String, Map<String, int>> votes) {
    final result = <String, String>{};

    for (var entry in votes.entries) {
      final attribute = entry.key;
      final valueVotes = entry.value;

      if (valueVotes.isEmpty) continue;

      final topEntry = valueVotes.entries.reduce(
        (a, b) => a.value >= b.value ? a : b,
      );
      result[attribute] = topEntry.key;
    }

    return result.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

List<Question> islandQuiz = [
  Question(
    '¿Qué estética tiene tu isla?',
    ['Rural', 'Tierna', 'Citadina', 'Medieval', 'Natural', 'Desorden'],
    [{}, {}, {}, {}, {}, {}],
  ),
];

List<Question> personalityQuiz = [];

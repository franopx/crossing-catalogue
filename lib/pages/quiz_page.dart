import 'package:crossing_catalogue/domain/entities/question_entity.dart';
import 'package:crossing_catalogue/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:crossing_catalogue/widgets/question_widget.dart';
import 'package:crossing_catalogue/domain/entities/villager_match_entity.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<StatefulWidget> createState() => _QuizState();
}

class _QuizState extends State<QuizPage> {
  int index = 0;
  final service = ServiceVillager('');

  Map<String, Map<String, int>> attributeVotes = {};

  final List<Question> questions = [];

  void applyEffects(Map<String, Map<String, int>> effects) {
    for (final attr in effects.entries) {
      attributeVotes.putIfAbsent(attr.key, () => {});
      for (final v in attr.value.entries) {
        attributeVotes[attr.key]!.update(
          v.key,
          (val) => val + v.value,
          ifAbsent: () => v.value,
        );
      }
    }
  }

  void onOptionSelected(int selected) async {
    applyEffects(questions[index].effects[selected]);
    if (index + 1 < questions.length) {
      setState(() => index++);
    } else {
      final villagers = await service.fetchAndRankVillager(
        votes: attributeVotes,
      );

      if (villagers.isNotEmpty) {
        final best = villagers.first;
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Tu Aldeano Ideal'),
            content: Text('${best.villager['name']}'),
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (_) => const AlertDialog(
            title: Text('Sin Resultados'),
            content: Text('No se encontro ningun aldeano compatible.'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('¿Que aldeano eres?')),
      body: QuestionWidget(
        question: questions[index],
        onOptionSelected: onOptionSelected,
      ),
    );
  }
}

import 'package:crossing_catalogue/domain/entities/question_entity.dart';
import 'package:crossing_catalogue/pages/share_result_page.dart';
import 'package:crossing_catalogue/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:crossing_catalogue/widgets/question_widget.dart';
import 'package:logger/web.dart';

class QuizPage extends StatefulWidget {
  final String title;
  final List<Question> questions;

  const QuizPage({super.key, required this.title, required this.questions});

  @override
  State<StatefulWidget> createState() => _QuizState();
}

class _QuizState extends State<QuizPage> {
  int index = 0;
  final service = ServiceVillager('');
  Map<String, Map<String, int>> attributeVotes = {};

  void showResults() async {
    final villagers = await service.fetchAndRankVillagers(
      votes: attributeVotes,
    );
    if (!mounted) return;


    if (villagers.isEmpty) {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text('No matches'),
          content: Text('No compatible villager was found.'),
        ),
      );
    } else {
      final topVillager = villagers.first;

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Your ideal villager is...'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(topVillager.villager.imageUrl),
              const SizedBox(height: 8),
              Text(
                topVillager.villager.name,
                style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ShareResult(villager: topVillager.villager),
                  ),
                ),
                icon: const Icon(Icons.share),
                label: const Text('Share results'),
              ),
            ],
          ),
        ),
      );
    }
  }

  void onOptionsSelected(List<int> selected) {
    final current = widget.questions[index];

    for (int i in selected) {
      final effects = current.effects[i];

      for (final attr in effects.entries) {
        attributeVotes.putIfAbsent(attr.key, () => {});

        for (final value in attr.value.entries) {
          attributeVotes[attr.key]!.update(
            value.key,
            (existing) => existing + value.value,
            ifAbsent: () => value.value,
          );
        }
      }
    }

    if (index + 1 < widget.questions.length) {
      setState(() => index++);
    } else {
      showResults();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Center(child: 
          QuestionWidget(
          question: widget.questions[index],
          onAnswered: onOptionsSelected,
        )
      ),
    );
  }
}

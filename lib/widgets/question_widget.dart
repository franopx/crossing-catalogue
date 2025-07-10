import 'package:crossing_catalogue/domain/entities/question_entity.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  final void Function(int) onOptionSelected;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(question.question, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            ...List.generate(question.answers.length, (i) {
              return ElevatedButton(
                onPressed: () => onOptionSelected(i),
                child: Text(question.answers[i]),
              );
            }),
          ],
        ),
      ),
    );
  }
}

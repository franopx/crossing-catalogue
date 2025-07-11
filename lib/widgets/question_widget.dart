import 'package:crossing_catalogue/domain/entities/question_entity.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  final Question question;
  final void Function(List<int>) onAnswered;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.onAnswered,
  });

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  Set<int> selectedIndexes = {};

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                widget.question.question,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 12),
              ...List.generate(widget.question.answers.length, (i) {
                final isSelected = selectedIndexes.contains(i);

                return widget.question.type == QuestionType.singleChoice
                    ? ElevatedButton(
                        onPressed: () => widget.onAnswered([i]),
                        child: Text(widget.question.answers[i]),
                      )
                    : CheckboxListTile(
                        value: isSelected,
                        title: Text(widget.question.answers[i]),
                        onChanged: (value) {
                          setState(() {
                            if (value == true) {
                              selectedIndexes.add(i);
                            } else {
                              selectedIndexes.remove(i);
                            }
                          });
                        },
                      );
              }),
              if (widget.question.type == QuestionType.multipleChoice)
                ElevatedButton(
                  onPressed: selectedIndexes.isNotEmpty
                      ? () => widget.onAnswered(selectedIndexes.toList())
                      : null,
                  child: const Text('Confirmar Seleccion'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

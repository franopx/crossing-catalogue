import 'package:crossing_catalogue/domain/quiz_data/island_quiz.dart';
import 'package:crossing_catalogue/domain/quiz_data/personality_quiz.dart';
import 'package:crossing_catalogue/pages/quiz_page.dart';
import 'package:crossing_catalogue/widgets/quiz_option_widget.dart';
import 'package:flutter/material.dart';

class QuizSelectionPage extends StatelessWidget {
  const QuizSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuizOptionWidget(
              title: 'Personality Test',
              subtitle: 'Find out which AC:NH villager are you',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuizPage(
                      title: 'Personality Test',
                      questions: personalityQuestions,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            QuizOptionWidget(
              title: 'Island Test',
              subtitle:
                  'Find out which AC:NH villager is the best for your island',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuizPage(
                      title: 'Island Test',
                      questions: islandQuestions,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

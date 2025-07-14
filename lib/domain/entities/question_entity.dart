enum QuestionType { singleChoice, multipleChoice }

class Question {
  final String question;
  final List<String> answers;
  final List<Map<String, Map<String, int>>> effects;
  final QuestionType type;

  Question({
    required this.question,
    required this.answers,
    required this.effects,
    this.type = QuestionType.singleChoice,
  });
}

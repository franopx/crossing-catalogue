class Question {
  String question;
  List<String> answers;
  List<Map<String, Map<String, int>>> effects;

  Question({
    required this.question,
    required this.answers,
    required this.effects,
  });
}

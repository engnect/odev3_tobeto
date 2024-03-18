class Question {
  const Question(
      {required this.question,
      required this.answers,
      required this.correctAns});

  final String question;
  final List<String> answers;
  final String correctAns;
}

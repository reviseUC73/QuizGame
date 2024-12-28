class QuizQuestionModel {
  const QuizQuestionModel(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffedAnswersList() {
    final shuffedList = List.of(answers);
    shuffedList.shuffle();
    return shuffedList;
  }
}
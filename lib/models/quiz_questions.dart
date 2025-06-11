class QuizQuestions {
  const QuizQuestions(this.question, this.multipleOptions);

  final String question;
  final List<String> multipleOptions;

  List<String> getShuffledList() {
    final shuffledList = List.of(multipleOptions);
    shuffledList.shuffle();
    return shuffledList;
  }
}

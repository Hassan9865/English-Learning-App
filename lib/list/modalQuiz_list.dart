class ModalQuiz {
  final String title;
  final String ques;
  final String option1;
  final String option2;
  final String option3;
  final int correctAnswerIndex;

  ModalQuiz({
    required this.title,
    required this.ques,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.correctAnswerIndex,
  });
  String getOption(int index) {
    if (index == 0) return option1;
    if (index == 1) return option2;
    return option3;
  }
}

final List<ModalQuiz> modalQuiz = [
  ModalQuiz(
    title: "Modal Quiz",
    ques: "1) I saw ___ cat in the garden yesterday.",
    option1: 'a) An',
    option2: 'b) The',
    option3: 'c) None',
    correctAnswerIndex: 0,
  ),
];

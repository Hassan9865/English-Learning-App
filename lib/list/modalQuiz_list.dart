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
    ques: "1) You ___ finish your homework before going out.",
    option1: 'a) must',
    option2: 'b) can',
    option3: 'c) might',
    correctAnswerIndex: 0,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "2) ___ I borrow your pen, please?",
    option1: 'a) Must',
    option2: 'b) May',
    option3: 'c) Should',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "3) They ___ be at the library now.",
    option1: 'a) can',
    option2: 'b) must',
    option3: 'c) could',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "4) You ___ leave the class early.",
    option1: 'a) might',
    option2: 'b) must',
    option3: 'c) may',
    correctAnswerIndex: 2,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "5) He ___ play the piano very well.",
    option1: 'a) can',
    option2: 'b) might',
    option3: 'c) should',
    correctAnswerIndex: 0,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "6) If you work hard, you ___ succeed.",
    option1: 'a) must',
    option2: 'b) can',
    option3: 'c) may',
    correctAnswerIndex: 2,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "7) We ___ visit our grandparents this weekend.",
    option1: 'a) could',
    option2: 'b) must',
    option3: 'c) will',
    correctAnswerIndex: 0,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "8) ___ you help me with my homework?",
    option1: 'a) May',
    option2: 'b) Can',
    option3: 'c) Should',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "9) You ___ not park your car here.",
    option1: 'a) can',
    option2: 'b) must',
    option3: 'c) may',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "10) I ___ finish this task by tomorrow.",
    option1: 'a) must',
    option2: 'b) might',
    option3: 'c) could',
    correctAnswerIndex: 0,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "11) She ___ be very tired after the trip.",
    option1: 'a) can',
    option2: 'b) might',
    option3: 'c) will',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "12) You ___ call him if you need help.",
    option1: 'a) could',
    option2: 'b) should',
    option3: 'c) might',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "13) It ___ rain later, so take an umbrella.",
    option1: 'a) must',
    option2: 'b) should',
    option3: 'c) might',
    correctAnswerIndex: 2,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "14) ___ you mind helping me with this?",
    option1: 'a) Would',
    option2: 'b) Can',
    option3: 'c) Might',
    correctAnswerIndex: 0,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "15) You ___ eat so much candy.",
    option1: 'a) can',
    option2: 'b) should',
    option3: 'c) might',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "16) They ___ arrive at any moment.",
    option1: 'a) must',
    option2: 'b) might',
    option3: 'c) can',
    correctAnswerIndex: 0,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "17) We ___ go to the movies tonight if we finish early.",
    option1: 'a) might',
    option2: 'b) can',
    option3: 'c) must',
    correctAnswerIndex: 0,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "18) You ___ bring your ID to enter the building.",
    option1: 'a) may',
    option2: 'b) can',
    option3: 'c) must',
    correctAnswerIndex: 2,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "19) ___ you like some more coffee?",
    option1: 'a) Could',
    option2: 'b) Would',
    option3: 'c) Might',
    correctAnswerIndex: 1,
  ),
  ModalQuiz(
    title: "Modal Quiz",
    ques: "20) He ___ have left his phone at home.",
    option1: 'a) must',
    option2: 'b) might',
    option3: 'c) can',
    correctAnswerIndex: 1,
  ),
];

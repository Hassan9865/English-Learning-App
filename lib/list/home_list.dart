class BasicQuiz {
  final String title;
  final String ques;
  final String option1;
  final String option2;
  final String option3;
  final int correctAnswerIndex;

  BasicQuiz({
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

final List<BasicQuiz> basicQuiz = [
  BasicQuiz(
    title: "Basic Quiz",
    ques: "I saw ___ cat in the garden yesterday.",
    option1: 'a) An',
    option2: 'b) The',
    option3: 'c) None',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques:
        "Which article is used before singular countable nouns that begin with a vowel sound?",
    option1: 'a) A',
    option2: 'b) The',
    option3: 'c) None',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "Choose the correct article: I have ___ apple in my bag.",
    option1: 'a) A',
    option2: 'b) The',
    option3: 'c) None',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques:
        "Fill in the blank: He is ___ doctor at ___ hospital down the street.",
    option1: 'a) A',
    option2: 'b) the / a ',
    option3: 'c) a / the',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "___ sun rises in the east.",
    option1: 'a) A',
    option2: 'b) The',
    option3: 'c) None',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "She gave me ___ book, but I lost ___ book.",
    option1: ' a) a / the',
    option2: 'b) the / a',
    option3: 'c) a / a',
    correctAnswerIndex: 0,
  ),
];

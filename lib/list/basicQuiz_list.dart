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

// final List<BasicQuiz> basicQuiz = [
//   BasicQuiz(
//     title: "Basic Quiz",
//     ques: "1) I saw ___ cat in the garden yesterday.",
//     option1: 'a) An',
//     option2: 'b) The',
//     option3: 'c) None',
//     correctAnswerIndex: 0,
//   ),

// ];

final List<BasicQuiz> basicQuiz = [
  BasicQuiz(
    title: "Basic Quiz",
    ques: "1) I saw ___ cat in the garden yesterday.",
    option1: 'a) An',
    option2: 'b) The',
    option3: 'c) None',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "2) Which sentence is correctly punctuated?",
    option1: 'a) She said, “Let’s go!”',
    option2: 'b) She said “Let’s go”!',
    option3: 'c) She said “Let’s go!”',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "3) I have ___ idea for the project.",
    option1: 'a) a',
    option2: 'b) an',
    option3: 'c) the',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "4) Choose the correct article: He is ___ honest man.",
    option1: 'a) the',
    option2: 'b) an',
    option3: 'c)  a',
    correctAnswerIndex: 2,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "5) The word “they’re” is a contraction for ___?",
    option1: 'a) their',
    option2: 'b) they are',
    option3: 'c) there',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "6) Choose the correctly punctuated sentence.",
    option1: 'a) “Where are you going”? she asked.',
    option2: 'b) “Where are you going?” she asked.',
    option3: 'c) “Where are you going she asked?”',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "7) ___ apple a day keeps the doctor away.",
    option1: 'a) An',
    option2: 'b) A',
    option3: 'c) The',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "8) I don’t have ___ time to finish this.",
    option1: 'a) a',
    option2: 'b) the',
    option3: 'c) any',
    correctAnswerIndex: 2,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "9) Choose the correct sentence.",
    option1: 'a) I have a meeting, at 2:00 PM.',
    option2: 'b) I have a meeting at 2:00 PM.',
    option3: 'c) I have, a meeting at 2:00 PM.',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "10) Please give me ___ book on the table.",
    option1: 'a) a',
    option2: 'b) the',
    option3: 'c) an',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "11) Which is the correct sentence?",
    option1: 'a) He said “hello.”',
    option2: 'b) He said, “hello.”',
    option3: 'c) He said, “Hello.”',
    correctAnswerIndex: 2,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "12) I want ___ ice cream.",
    option1: 'a) a',
    option2: 'b) an',
    option3: 'c) the',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "13) Choose the correct sentence.",
    option1: 'a) Let’s eat Grandma!',
    option2: 'b) Let’s eat, Grandma!',
    option3: 'c) Let’s, eat Grandma!',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "14) My friend has ___ unique talent.",
    option1: 'a) a',
    option2: 'b) an',
    option3: 'c) the',
    correctAnswerIndex: 2,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "15) Which sentence uses correct punctuation?",
    option1: 'a) My favorite colors are blue, green and purple.',
    option2: 'b) My favorite colors are: blue, green, and purple.',
    option3: 'c) My favorite colors are blue green, and purple.',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "16) The dog chased ___ cat.",
    option1: 'a) the',
    option2: 'b) a',
    option3: 'c) an',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "17) Do you want ___ apple or ___ banana?",
    option1: 'a) an, a',
    option2: 'b) a, a',
    option3: 'c) the, an',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "18) Choose the correct sentence.",
    option1: 'a) Its going to rain.',
    option2: 'b) It’s going to rain.',
    option3: 'c) Its’ going to rain.',
    correctAnswerIndex: 1,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "19) I saw ___ interesting movie last night.",
    option1: 'a) an',
    option2: 'b) a',
    option3: 'c) the',
    correctAnswerIndex: 0,
  ),
  BasicQuiz(
    title: "Basic Quiz",
    ques: "20) The cake was baked by ___ chef.",
    option1: 'a) the',
    option2: 'b) a',
    option3: 'c) an',
    correctAnswerIndex: 0,
  ),
];

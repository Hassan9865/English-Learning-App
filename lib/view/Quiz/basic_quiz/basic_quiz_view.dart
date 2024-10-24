import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:eng_learning_app/view/Quiz/basic_quiz/basic_quiz_viewModel.dart';
import 'package:eng_learning_app/list/home_list.dart'; // import your list

class BasicQuizView extends StatelessWidget {
  const BasicQuizView({super.key});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BasicQuizViewmodel(),
        builder: (context, BasicQuizViewmodel viewModel, child) {
          final quiz = basicQuiz[viewModel.currentQuestionIndex];

          return Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(title: Text(quiz.title)),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              quiz.ques,
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize:
                                    MediaQuery.of(context).size.width / 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),

                  // Option Buttons
                  for (int i = 0; i < 3; i++)
                    OptionButton(
                      index: i,
                      text: quiz.getOption(i),
                      selected: viewModel.selectedOptionIndex == i,
                      correct: viewModel.isCorrect(i),
                      answered: viewModel.answered,
                      onTap: () => viewModel.selectOption(i),
                    ),

                  SizedBox(height: MediaQuery.of(context).size.height / 20),

                  // Next Button
                  if (viewModel.answered)
                    ElevatedButton(
                      onPressed: viewModel.hasNextQuestion
                          ? viewModel.nextQuestion
                          : null, // Disable if no more questions
                      child: Text("Next"),
                    ),
                ],
              ),
            ),
          );
        });
  }
}

// Option Button Widget
class OptionButton extends StatelessWidget {
  final int index;
  final String text;
  final bool selected;
  final bool correct;
  final bool answered;
  final VoidCallback onTap;

  OptionButton({
    required this.index,
    required this.text,
    required this.selected,
    required this.correct,
    required this.answered,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      if (!answered) return Colors.black;
      if (selected && correct) return Colors.blue;
      if (selected && !correct) return Colors.red;
      if (correct) return Colors.blue;
      return Colors.black;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // primary: getColor(),
          backgroundColor: getColor(),

          minimumSize: Size(MediaQuery.of(context).size.width / 2, 50),
        ),
        onPressed: answered ? null : onTap, // Disable if already answered
        child: Text(text),
      ),
    );
  }
}

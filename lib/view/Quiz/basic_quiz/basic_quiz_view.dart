import 'package:eng_learning_app/components/optionButton.dart';
import 'package:eng_learning_app/list/basicQuiz_list.dart';
import 'package:eng_learning_app/view/Quiz/basic_quiz/basic_quiz_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BasicQuizView extends StatelessWidget {
  const BasicQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BasicQuizViewModel>.reactive(
      viewModelBuilder: () => BasicQuizViewModel(),
      builder: (context, viewModel, child) {
        final currentQuiz =
            basicQuiz[viewModel.currentQuestionIndex]; // Get current question
        final correctAnswerIndex =
            currentQuiz.correctAnswerIndex; // Get the correct answer index

        return Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Basic Quiz",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width / 16,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.deepPurple,
            elevation: 4,
            // leading: Icon(Icons.menu, color: Colors.white),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Question card
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      currentQuiz.ques,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),

                // Option buttons
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OptionButton(
                      text: i == 0
                          ? currentQuiz.option1
                          : i == 1
                              ? currentQuiz.option2
                              : currentQuiz.option3,
                      color: viewModel.selectedOptionIndex == null
                          ? Colors.black // Default color for unselected
                          : viewModel.selectedOptionIndex == i &&
                                  viewModel.isCorrect(i, correctAnswerIndex)
                              ? Colors.blue // Correct answer
                              : viewModel.selectedOptionIndex == i
                                  ? Colors.red // Wrong answer
                                  : viewModel.isCorrect(i, correctAnswerIndex)
                                      ? Colors
                                          .blue // Correct answer (after wrong selected)
                                      : Colors.black, // Unselected options
                      onTap: viewModel.answered
                          ? null // Disable buttons after answer is given
                          : () {
                              viewModel.selectOption(i, correctAnswerIndex);
                            },
                    ),
                  ),

                SizedBox(height: MediaQuery.of(context).size.height / 20),

                // Next button to move to the next question
                FloatingActionButton(
                  onPressed: viewModel.answered
                      ? () {
                          viewModel.nextQuestion(
                              context); // Move to the next question
                        }
                      : null, // Disable until question is answered
                  child: const Text("Next"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

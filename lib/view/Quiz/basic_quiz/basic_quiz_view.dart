import 'package:eng_learning_app/components/optionButton.dart';
import 'package:eng_learning_app/list/home_list.dart';
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
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text("Basic Quiz"),
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
                const SizedBox(height: 20),

                // Option buttons
                for (int i = 0; i < 3; i++)
                  OptionButton(
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

                const SizedBox(height: 20),

                // Next button to move to the next question
                FloatingActionButton(
                  onPressed: viewModel.answered
                      ? () {
                          viewModel.nextQuestion(); // Move to the next question
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

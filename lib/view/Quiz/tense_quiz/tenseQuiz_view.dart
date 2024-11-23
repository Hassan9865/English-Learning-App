import 'package:eng_learning_app/components/optionButton.dart';
import 'package:eng_learning_app/list/tenseQuiz_list.dart';
import 'package:eng_learning_app/view/Quiz/tense_quiz/tenseQuiz_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TensequizView extends StatelessWidget {
  const TensequizView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => TensequizViewmodel(),
        builder: (context, TensequizViewmodel viewModel, child) {
          final currentQuiz = tenseQuiz[viewModel.currentQuestionIndex];
          final correctAnswerIndex = currentQuiz.correctAnswerIndex;
          return Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Tenses Quiz",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 16,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.deepPurple,
              elevation: 4,
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
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10)),
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
                            ? Colors.black
                            : viewModel.selectedOptionIndex == i &&
                                    viewModel.isCorrect(i, correctAnswerIndex)
                                ? Colors.lightBlue
                                : viewModel.selectedOptionIndex == i
                                    ? Colors.red
                                    : viewModel.isCorrect(i, correctAnswerIndex)
                                        ? Colors.lightBlue
                                        : Colors.black,
                        onTap: viewModel.answered
                            ? null
                            : () {
                                viewModel.selectOption(i, correctAnswerIndex);
                              },
                      ),
                    ),

                  SizedBox(height: MediaQuery.of(context).size.height / 20),

                  FloatingActionButton(
                    onPressed: viewModel.answered
                        ? () {
                            viewModel.nextQuestion(context);
                          }
                        : null, // Disable until question is answered
                    child: const Text("Next"),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

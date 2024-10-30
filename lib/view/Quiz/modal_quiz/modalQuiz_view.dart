import 'package:eng_learning_app/components/optionButton.dart';
import 'package:eng_learning_app/list/modalQuiz_list.dart';
import 'package:eng_learning_app/view/Quiz/modal_quiz/modalQuiz_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ModalquizView extends StatelessWidget {
  const ModalquizView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ModalquizViewmodel(),
        builder: (context, ModalquizViewmodel viewModal, index) {
          final currentQuiz = modalQuiz[viewModal.currentQuestionIndex];
          final correctAnswerIndex = currentQuiz.correctAnswerIndex;
          return Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Modal Verb Quiz",
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
                          color: viewModal.selectedOptionIndex == null
                              ? Colors.black
                              : viewModal.selectedOptionIndex == i &&
                                      viewModal.isCorrect(i, correctAnswerIndex)
                                  ? Colors.lightBlue
                                  : viewModal.selectedOptionIndex == i
                                      ? Colors.red
                                      : viewModal.isCorrect(
                                              i, correctAnswerIndex)
                                          ? Colors.lightBlue
                                          : Colors.black,
                          onTap: viewModal.answered
                              ? null
                              : () {
                                  viewModal.selectOption(i, correctAnswerIndex);
                                },
                        )),

                  SizedBox(height: MediaQuery.of(context).size.height / 20),

                  // Next button to move to the next question
                  FloatingActionButton(
                    onPressed: viewModal.answered
                        ? () {
                            viewModal.nextQuestion(context);
                          }
                        : null,
                    child: const Text("Next"),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

import 'package:eng_learning_app/components/dialogBox.dart';
import 'package:eng_learning_app/list/basicQuiz_list.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BasicQuizViewModel extends BaseViewModel {
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;
  bool answered = false;

  void selectOption(int index, int correctAnswerIndex) {
    selectedOptionIndex = index;
    answered = true;
    notifyListeners();
  }

  bool isCorrect(int optionIndex, int correctAnswerIndex) {
    return optionIndex == correctAnswerIndex;
  }

  void reset() {
    selectedOptionIndex = null;
    answered = false;
    notifyListeners();
  }

  void nextQuestion(BuildContext context) {
    if (currentQuestionIndex < basicQuiz.length - 1) {
      currentQuestionIndex++;
    } else {
      showAlertDialog(
        context,
      );
    }
    reset();
    notifyListeners();
  }
}

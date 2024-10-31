import 'package:eng_learning_app/components/dialogBox.dart';
import 'package:eng_learning_app/list/tenseQuiz_list.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TensequizViewmodel extends BaseViewModel {
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;
  bool answered = false;

  bool isCorrect(int optionIndex, int correctAnswerIndex) {
    return optionIndex == correctAnswerIndex;
  }

  void selectOption(int index, int correctAnswerIndex) {
    selectedOptionIndex = index;
    answered = true;
    notifyListeners();
  }

  void reset() {
    selectedOptionIndex = null;
    answered = false;
    notifyListeners();
  }

  void nextQuestion(BuildContext context) {
    if (currentQuestionIndex < tenseQuiz.length - 1) {
      currentQuestionIndex++;
    } else {
      showAlertDialog(context);
    }
    reset();
    notifyListeners();
  }
}

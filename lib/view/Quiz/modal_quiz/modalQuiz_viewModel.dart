import 'package:flutter/material.dart';
import 'package:learn_eng/components/dialogBox.dart';
import 'package:learn_eng/list/modalQuiz_list.dart';
import 'package:stacked/stacked.dart';

class ModalquizViewmodel extends BaseViewModel {
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
    if (currentQuestionIndex < modalQuiz.length - 1) {
      currentQuestionIndex++;
    } else {
      showAlertDialog(context);
    }
    reset();
    notifyListeners();
  }
}
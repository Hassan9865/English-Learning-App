import 'package:eng_learning_app/list/home_list.dart';
import 'package:stacked/stacked.dart';

class BasicQuizViewModel extends BaseViewModel {
  int currentQuestionIndex = 0; // Track the current question index
  int? selectedOptionIndex; // Track the selected option
  bool answered = false; // Check if the question has been answered

  // Method to select an option
  void selectOption(int index, int correctAnswerIndex) {
    selectedOptionIndex = index; // Save the selected option
    answered = true; // Mark the question as answered
    notifyListeners(); // Notify UI to update
  }

  // Method to check if the selected option is correct
  bool isCorrect(int optionIndex, int correctAnswerIndex) {
    return optionIndex == correctAnswerIndex;
  }

  // Method to reset for the next question
  void reset() {
    selectedOptionIndex = null; // Reset selected option
    answered = false; // Mark the question as not answered
    notifyListeners(); // Notify UI to update
  }

  // Method to move to the next question
  void nextQuestion() {
    if (currentQuestionIndex < basicQuiz.length - 1) {
      currentQuestionIndex++; // Increment the question index
    } else {
      // Handle the case when the quiz is completed
      // You can navigate to a results page or show a message
    }
    reset(); // Reset for the new question
    notifyListeners(); // Notify UI to update
  }
}

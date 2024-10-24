import 'package:stacked/stacked.dart';
import 'package:eng_learning_app/list/home_list.dart'; // import your list

class BasicQuizViewmodel extends BaseViewModel {
  int _currentQuestionIndex = 0;
  int? _selectedOptionIndex;
  bool _answered = false;

  int get currentQuestionIndex => _currentQuestionIndex;
  int? get selectedOptionIndex => _selectedOptionIndex;
  bool get answered => _answered;

  void selectOption(int index) {
    if (!_answered) {
      _selectedOptionIndex = index;
      _answered = true;
      notifyListeners();
    }
  }

  bool isCorrect(int index) {
    return index ==
        1; // Assuming option 1 is always the correct answer, modify as needed
  }

  void nextQuestion() {
    _currentQuestionIndex++;
    _answered = false;
    _selectedOptionIndex = null;
    notifyListeners();
  }

  bool get hasNextQuestion => _currentQuestionIndex < basicQuiz.length - 1;
}

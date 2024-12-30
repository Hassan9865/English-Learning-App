import 'package:learn_eng/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class QuizesViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  navigateTobasicQuiz() {
    navigationService.navigateToBasicQuizView();
  }

  navigateToModalQuiz() {
    navigationService.navigateToModalquizView();
  }

  navigateToTenseQuiz() {
    navigationService.navigateToTensequizView();
  }
}

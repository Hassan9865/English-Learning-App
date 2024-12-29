import 'package:eng_learning_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  naviagteToProfileview() {
    navigationService.navigateToProfileView();
  }

  naviagteToQuizview() {
    navigationService.navigateToQuizesView();
  }

  naviagteTorReadListeview() {
    navigationService.navigateToReadlistenView();
  }
}

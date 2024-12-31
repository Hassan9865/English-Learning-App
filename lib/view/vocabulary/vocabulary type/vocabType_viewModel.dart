import 'package:learn_eng/app/app.router.dart';
import 'package:learn_eng/list/vocabulary_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VocabtypeViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  naviagteTorVocabularyview(VocabularyList vocab) {
    navigationService.navigateToVocabularyView(vocab: vocab);
  }
}

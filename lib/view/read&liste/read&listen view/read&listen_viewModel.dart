import 'package:learn_eng/app/app.router.dart';
import 'package:learn_eng/list/story_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ReadlistenViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  void naviagteToStoryviews(StoryList story) {
    navigationService.navigateTo(
      Routes.storyView, // Route name defined in app router
      arguments: StoryViewArguments(story: story), // Pass story as an argument
    );
  }
}
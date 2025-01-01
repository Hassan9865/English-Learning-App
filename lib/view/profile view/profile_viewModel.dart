import 'package:learn_eng/app/app.router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  String name = '';
  String email = '';
  String proficiency = '';
  String country = '';
  String gender = '';
  String learnGoal = '';
  String interest = '';

  Future<void> loadData() async {
    final pref = await SharedPreferences.getInstance();
    name = pref.getString('name') ?? '';
    email = pref.getString('email') ?? '';
    proficiency = pref.getString('proficiency') ?? '';
    country = pref.getString("country") ?? '';
    gender = pref.getString('gender') ?? '';
    learnGoal = pref.getString('learnGoal') ?? '';
    interest = pref.getString('interest') ?? "";
    notifyListeners();
  }

  navigateToEditview() {
    navigationService.navigateToEditProfileView();
  }

  navigateToHome() {
    navigationService.navigateToHomeView();
  }
}

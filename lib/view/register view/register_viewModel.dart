import 'package:eng_learning_app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  TextEditingController emailController = TextEditingController();
  TextEditingController genderCotroller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController coutryController = TextEditingController();
  TextEditingController englevelController = TextEditingController();
  TextEditingController learngoalController = TextEditingController();
  TextEditingController interestController = TextEditingController();

  bool isloading = false;

  navigateToHome() {
    navigationService.navigateToHomeView();
  }

  naviagteToBottomNav() {
    navigationService.navigateToBottomNavbarView();
  }

  Future<void> saveUserDate() async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString("name", nameController.text);
    await pref.setString("email", emailController.text);
    await pref.setString("proficiency", englevelController.text);
    await pref.setString("coutry", coutryController.text);
    await pref.setString("gender", genderCotroller.text);
    await pref.setString("learnGoal", learngoalController.text);
    await pref.setString("interest", interestController.text);
    await pref.setBool("isRegistered", true);
  }
}

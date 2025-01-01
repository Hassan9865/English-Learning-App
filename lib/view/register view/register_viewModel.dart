import 'package:flutter/material.dart';
import 'package:learn_eng/app/app.router.dart';
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

  naviagteToProfileview() {
    navigationService.navigateToProfileView();
  }

  Future<void> saveUserDate() async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString("name", nameController.text);
    await pref.setString("email", emailController.text);
    await pref.setString("proficiency", englevelController.text);
    await pref.setString("country", coutryController.text);
    await pref.setString("gender", genderCotroller.text);
    await pref.setString("learnGoal", learngoalController.text);
    await pref.setString("interest", interestController.text);
    await pref.setBool("isRegistered", true);
  }

  ///  for edit view
  Future<void> showsaveUserDate() async {
    final pref = await SharedPreferences.getInstance();
    String savename = pref.getString("name") ?? '';
    nameController.text = savename;
    String saveemail = pref.getString("email") ?? '';
    emailController.text = saveemail;
    String saveproficiency = pref.getString("proficiency") ?? '';
    englevelController.text = saveproficiency;
    String savecountry = pref.getString("country") ?? '';
    coutryController.text = savecountry;
    String savegender = pref.getString("gender") ?? '';
    genderCotroller.text = savegender;
    String savelearnGoal = pref.getString("learnGoal") ?? '';
    learngoalController.text = savelearnGoal;
    String saveinterest = pref.getString("interest") ?? '';
    interestController.text = saveinterest;
    notifyListeners();
  }
}

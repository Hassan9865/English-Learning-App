import 'package:eng_learning_app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();
  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();

  bool isloading = false;

  naviagteToRegister() {
    navigationService.navigateToRegisterView();
  }

  naviagteToHome() {
    navigationService.navigateToHomeView();
  }

  naviagteToBottomNav() {
    navigationService.navigateToBottomNavbarView();
  }
}

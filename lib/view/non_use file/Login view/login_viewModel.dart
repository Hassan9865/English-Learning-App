import 'package:flutter/material.dart';
import 'package:learn_eng/app/app.router.dart';
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

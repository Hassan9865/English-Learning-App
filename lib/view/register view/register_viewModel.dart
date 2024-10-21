import 'package:eng_learning_app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();

  bool isloading = false;

  navigateToLoginView() {
    navigationService.navigateToLoginView();
  }
}

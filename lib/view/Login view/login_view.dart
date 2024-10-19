import 'package:eng_learning_app/view/Login%20view/login_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewmodel(),
        builder: (context, LoginViewmodel viewModel, index) {
          return Scaffold();
        });
  }
}

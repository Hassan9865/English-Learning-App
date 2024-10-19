import 'dart:async';

import 'package:eng_learning_app/view/Splash%20view/splash_viewModel.dart';
import 'package:eng_learning_app/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SplashViewmodel(),
        builder: (context, SplashViewmodel viewModel, index) {
          Timer(
              Duration(seconds: 6),
              () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeView())));
          return Center(
            child: Icon(
              Icons.safety_check_outlined,
              size: 50,
            ),
          );
        });
  }
}

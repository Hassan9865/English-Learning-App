import 'dart:async';

import 'package:eng_learning_app/view/Splash%20view/splash_viewModel.dart';
import 'package:eng_learning_app/view/home/home_view.dart';
import 'package:eng_learning_app/view/register%20view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SplashViewmodel(),
        // onViewModelReady: (viewModel) =>
        builder: (context, SplashViewmodel viewModel, index) {
          Timer(Duration(seconds: 6), () async {
            final pref = await SharedPreferences.getInstance();
            bool isRegistered = pref.getBool('isRegistered') ?? false;

            if (isRegistered) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            } else {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => RegisterView()));
            }
          });
          return Scaffold(
            backgroundColor: Colors.grey[300],
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    "assets/animation/Animation - 1735376222709.json",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 4,
                  ),
                  Text(
                    "Improve Your English",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

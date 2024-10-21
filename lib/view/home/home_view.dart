import 'package:eng_learning_app/view/home/home_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewmodel(),
        builder: (context, HomeViewmodel viewModel, index) {
          return Scaffold();
        });
  }
}

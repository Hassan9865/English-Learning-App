import 'package:eng_learning_app/view/Quiz/basic_quiz/basic_quiz_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BasicQuizView extends StatelessWidget {
  const BasicQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BasicQuizViewmodel(),
        builder: (context, BasicQuizViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}

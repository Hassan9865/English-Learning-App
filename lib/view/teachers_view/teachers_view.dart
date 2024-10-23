import 'package:eng_learning_app/view/teachers_view/teachers_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TeachersView extends StatelessWidget {
  const TeachersView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => TeachersViewmodel(),
        builder: (context, TeachersViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}

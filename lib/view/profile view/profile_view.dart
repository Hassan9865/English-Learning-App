import 'package:eng_learning_app/view/profile%20view/profile_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewmodel(),
        builder: (context, ProfileViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}

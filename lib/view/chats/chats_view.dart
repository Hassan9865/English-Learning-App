import 'package:eng_learning_app/view/chats/chats_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ChatsViewmodel(),
        builder: (context, ChatsViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}

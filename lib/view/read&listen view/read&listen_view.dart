import 'package:eng_learning_app/view/read&listen%20view/read&listen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ReadlistenView extends StatelessWidget {
  const ReadlistenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ReadlistenViewmodel(),
        builder: (context, ReadlistenViewmodel viewModel, child) {
          return Scaffold();
        });
  }
}

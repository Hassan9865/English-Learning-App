import 'package:flutter/material.dart';
import 'package:learn_eng/view/vocabulary/vocabulary_viewModel.dart';
import 'package:stacked/stacked.dart';

class VocabularyView extends StatelessWidget {
  const VocabularyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => VocabularyViewmodel(),
        builder: (context, VocabularyViewmodel viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey[150],
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Vocabulary",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 16,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.deepPurple,
              elevation: 4,
            ),
            body: Center(
              child: Text(
                "Working On it",
                style: TextStyle(fontSize: 25),
              ),
            ),
          );
        });
  }
}

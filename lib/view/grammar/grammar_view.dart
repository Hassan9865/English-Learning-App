import 'package:flutter/material.dart';
import 'package:learn_eng/view/grammar/grammar_viewModel.dart';
import 'package:stacked/stacked.dart';

class GrammarView extends StatelessWidget {
  const GrammarView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => GrammarViewmodel(),
        builder: (context, GrammarViewmodel viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey[150],
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Grammar",
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

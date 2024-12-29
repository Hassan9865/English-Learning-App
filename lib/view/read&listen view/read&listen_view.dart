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
          return Scaffold(
            backgroundColor: Colors.grey[150],
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Read & listen",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 16,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.deepPurple,
              elevation: 4,
            ),
            body: SafeArea(
                child: Column(
              children: [
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Story"),
                    );
                  }),
                )
              ],
            )),
          );
        });
  }
}

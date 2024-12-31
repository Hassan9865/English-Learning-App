import 'package:flutter/material.dart';
import 'package:learn_eng/list/vocabulary_list.dart';
import 'package:learn_eng/view/vocabulary/vocabulary%20type/vocabType_viewModel.dart';
import 'package:stacked/stacked.dart';

class VocabtypeView extends StatelessWidget {
  const VocabtypeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => VocabtypeViewmodel(),
        builder: (context, VocabtypeViewmodel viewModel, child) {
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
            body: SafeArea(
                child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: vocabularylist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            viewModel.naviagteTorVocabularyview(
                                vocabularylist[index]);
                          },
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(vocabularylist[index]
                                  .image), // Uncomment if using images
                            ),
                            title: Text(
                              vocabularylist[index]
                                  .title, // Replace with userData['name'] if using Firestore data
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(Icons.more_vert),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )),
          );
        });
  }
}

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
            body: SafeArea(
                child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    // itemCount: storylist
                    //     .length, // Replace with actual count or snapshot.data!.docs.length if using Firestore
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 18, right: 18, top: 10, bottom: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          // width: MediaQuery.of(context).size.width / 13,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 106, 169, 208),
                                const Color.fromARGB(255, 210, 215, 219)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "title",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 11,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.volume_up_outlined,
                                color: Colors.black45,
                                size: MediaQuery.of(context).size.width / 13,
                              ),
                            ],
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

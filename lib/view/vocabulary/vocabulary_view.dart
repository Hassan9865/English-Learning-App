import 'package:flutter/material.dart';
import 'package:learn_eng/list/vocabulary_list.dart';

import 'package:learn_eng/view/vocabulary/vocabulary_viewModel.dart';
import 'package:learn_eng/view/vocabulary/widget/custum_cotaier.dart';
import 'package:stacked/stacked.dart';

class VocabularyView extends StatelessWidget {
  final VocabularyList vocab;
  const VocabularyView({super.key, required this.vocab});

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
                "${vocab.title} Vocabulary",
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
                    child: ListView(
                  children: [
                    CustumCotaier(title: vocab.vocabulary1),
                    CustumCotaier(title: vocab.vocabulary2),
                    CustumCotaier(title: vocab.vocabulary3),
                    CustumCotaier(title: vocab.vocabulary4),
                    CustumCotaier(title: vocab.vocabulary5),
                    CustumCotaier(title: vocab.vocabulary6),
                    CustumCotaier(title: vocab.vocabulary7),
                    CustumCotaier(title: vocab.vocabulary8),
                    CustumCotaier(title: vocab.vocabulary9),
                    CustumCotaier(title: vocab.vocabulary10),
                  ],
                )),
              ],
            )),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:learn_eng/view/home/home_viewModel.dart';
import 'package:learn_eng/view/home/widget/card_slider.dart';
import 'package:learn_eng/view/home/widget/my_card.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, HomeViewmodel viewModel, index) {
        return Scaffold(
          backgroundColor: Colors.grey[150],
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Learn English Daily",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width / 16,
                color: Colors.white,
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.deepPurple,
            elevation: 4,
            actions: [
              IconButton(
                onPressed: () {
                  viewModel.naviagteToProfileview();
                },
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Text(
                  "Quotes",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CardSlider(),
                Text(
                  "Exercise",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 14,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    children: [
                      MyCard(
                        title: "Vocaulary Builder",
                        icon: Icons.menu_book_outlined,
                        color: Colors.blueAccent,
                        ontap: () {
                          viewModel.naviagteTorVocabTypeview();
                        },
                      ),
                      MyCard(
                        title: "Grammar Lessons",
                        icon: Icons.library_books,
                        color: Colors.blueAccent,
                        ontap: () {
                          viewModel.naviagteTorGrammareview();
                        },
                      ),
                      MyCard(
                        title: "Reading & Listening Exercises",
                        icon: Icons.headphones,
                        color: Colors.blueAccent,
                        ontap: () {
                          viewModel.naviagteTorReadListeview();
                        },
                      ),
                      MyCard(
                          title: "Quizes",
                          icon: Icons.quiz_outlined,
                          color: Colors.blueAccent,
                          ontap: () {
                            viewModel.naviagteToQuizview();
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

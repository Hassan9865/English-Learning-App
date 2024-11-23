import 'package:eng_learning_app/view/home/home_viewModel.dart';
import 'package:eng_learning_app/view/home/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, HomeViewmodel viewModel, index) {
        return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Domino",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width / 16,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.deepPurple,
            elevation: 4,
            // leading: Icon(Icons.menu, color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Improve your English by taking Quizzes',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.navigateTobasicQuiz();
                    },
                    child: CustomCard(
                      title: "Basic",
                      description: "Quiz basic English concepts",
                      // imageUrl: "assets/bookImages/book 1.jpg",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToModalQuiz();
                    },
                    child: CustomCard(
                      title: "Modal Verbs",
                      description: "Understand how modal verbs work.",
                      // imageUrl: "assets/bookImages/book 2.jpg",
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToTenseQuiz();
                    },
                    child: CustomCard(
                      title: "Tense",
                      description: "Master past, present, and future tenses.",
                      // imageUrl: "assets/bookImages/book 3.jpg",
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

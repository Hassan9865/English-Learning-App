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
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Domino",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.grey[500],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Learn English - Choose a Section',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                  textAlign: TextAlign.center,
                ),
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
                    description: "Learn basic English concepts",
                    imageUrl: "assets/bookImages/book 1.jpg"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              CustomCard(
                  title: "Modal Verbs",
                  description: "Understand how modal verbs work.",
                  imageUrl: "assets/bookImages/book 2.jpg"),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              CustomCard(
                  title: "Tense",
                  description: "Master past, present, and future tenses.",
                  imageUrl: "assets/bookImages/book 3.jpg")
            ],
          ),
        );
      },
    );
  }
}

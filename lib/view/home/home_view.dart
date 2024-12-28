import 'package:eng_learning_app/view/home/home_viewModel.dart';
import 'package:eng_learning_app/view/home/widget/my_card.dart';
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
          appBar: AppBar(
            title: Text("Home"),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outline),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: const [
                    MyCard(
                      title: "Vocaulary uilder",
                      icon: Icons.menu_book_outlined,
                      color: Colors.blueAccent,
                    ),
                    MyCard(
                      title: "Grammar Lessons",
                      icon: Icons.library_books,
                      color: Colors.blueAccent,
                    ),
                    MyCard(
                      title: "Listening Exercises",
                      icon: Icons.headphones,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

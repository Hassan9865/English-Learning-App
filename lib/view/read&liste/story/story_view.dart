import 'package:eng_learning_app/list/story_list.dart';
import 'package:eng_learning_app/view/read&liste/story/story_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StoryView extends StatelessWidget {
  final StoryList story;

  const StoryView({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => StoryViewmodel(),
        builder: (context, StoryViewmodel viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey[150],
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Story ame",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 16,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.deepPurple,
              elevation: 4,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_up_outlined,
                      color: Colors.white,
                    ))
              ],
            ),
            body: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                padding: EdgeInsets.all(28.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ]),
                  image: DecorationImage(image: AssetImage("assets/eng.jpg")),
                ),
              ),
              Text(
                story.title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width / 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      story.story,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width / 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          );
        });
  }
}

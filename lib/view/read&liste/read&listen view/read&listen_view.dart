import 'package:eng_learning_app/list/story_list.dart';
import 'package:eng_learning_app/view/read&liste/read&listen%20view/read&listen_viewModel.dart';
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
                  child: ListView.builder(
                    itemCount: storylist
                        .length, // Replace with actual count or snapshot.data!.docs.length if using Firestore
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            viewModel.naviagteToStoryviews(storylist[index]);
                          },
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            leading: CircleAvatar(
                              radius: 30,
                              // backgroundImage: AssetImage(profilelist[index].image), // Uncomment if using images
                            ),
                            title: Text(
                              storylist[index]
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

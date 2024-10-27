import 'package:eng_learning_app/components/textfeild.dart';
import 'package:eng_learning_app/view/chats/chats_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ChatsViewmodel(),
      builder: (context, ChatsViewmodel viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Chats"),
          ),
          body: Localizations.override(
            context: context,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      MyTextFeid(
                        controller: viewModel.searchController,
                        hintText: "Search",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount:
                        10, // Replace with actual count or snapshot.data!.docs.length if using Firestore
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            viewModel.navigateToChattigView();
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
                              "User Name", // Replace with userData['name'] if using Firestore data
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
            ),
          ),
        );
      },
    );
  }
}

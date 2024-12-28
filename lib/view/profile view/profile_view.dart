import 'package:eng_learning_app/view/profile%20view/profile_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewmodel(),
        onViewModelReady: (viewModel) => viewModel.loadData(),
        builder: (context, ProfileViewmodel viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
                title: Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
                actions: []),
            body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height / 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 28,
                    ),
                    Text(viewModel.name),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.email_outlined,
                                color: Colors.lightBlue,
                              ),
                              title: Text(viewModel.email),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.language_outlined,
                                color: Colors.lightBlue[200],
                              ),
                              title: Text(viewModel.country),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.logout_outlined,
                                color: Colors.lightBlue[200],
                              ),
                              title: Text(viewModel.gender),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.email,
                                color: Colors.lightBlue[100],
                              ),
                              title: Text(viewModel.interest),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.email,
                                color: Colors.lightBlue[100],
                              ),
                              title: Text(viewModel.learnGoal),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.email,
                                color: Colors.lightBlue[100],
                              ),
                              title: Text(viewModel.proficiency),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}

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
              centerTitle: true,
              title: Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 16,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.deepPurple,
              elevation: 4,
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: MediaQuery.of(context).size.height / 15,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Text(
                        viewModel.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 15),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: EdgeInsets.symmetric(
                              vertical: 20), // Added padding
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisSize:
                                MainAxisSize.min, // Makes height dynamic
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.email_outlined,
                                  color: Colors.lightBlue,
                                ),
                                title: Text("Email"),
                                subtitle: Text(viewModel.email),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.energy_savings_leaf_outlined,
                                  color: Colors.lightBlue[200],
                                ),
                                title: Text('English Proficiency Level'),
                                subtitle: Text(viewModel.proficiency),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.location_city_outlined,
                                  color: Colors.lightBlue[200],
                                ),
                                title: Text('Country'),
                                subtitle: Text(viewModel.country),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.person_outline,
                                  color: Colors.lightBlue[200],
                                ),
                                title: Text('Gender'),
                                subtitle: Text(viewModel.gender),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.label,
                                  color: Colors.lightBlue[200],
                                ),
                                title: Text('Learning Goals'),
                                subtitle: Text(viewModel.learnGoal),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.interests_outlined,
                                  color: Colors.lightBlue[200],
                                ),
                                title: Text('Interests'),
                                subtitle: Text(viewModel.interest),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

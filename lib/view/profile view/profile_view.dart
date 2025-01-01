import 'package:flutter/material.dart';
import 'package:learn_eng/view/profile%20view/profile_viewModel.dart';
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
            backgroundColor: Colors.grey[200],
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
              leading: IconButton(
                  onPressed: () {
                    viewModel.navigateToHome();
                  },
                  icon: Icon(Icons.arrow_back_outlined)),
              actions: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Rounded corners
                          ),
                          title: Row(
                            children: [
                              Icon(Icons.edit_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Edit",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          content: Text(
                            "Do you want to Edit the Profile",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[800]),
                            textAlign: TextAlign.center,
                          ),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: [
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.greenAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                viewModel.navigateToEditview();
                              },
                              child: Text('Edit'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.edit_outlined),
                  color: Colors.white,
                ),
              ],
              backgroundColor: Colors.deepPurple,
              elevation: 4,
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.height / 13,
                          backgroundImage: AssetImage("assets/eng.jpg"),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 35,
                      ),
                      Text(
                        viewModel.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 15),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 35,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
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

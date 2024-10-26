import 'package:eng_learning_app/view/profile%20view/profile_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ProfileViewmodel(),
        builder: (context, ProfileViewmodel viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(title: Text("Profile"), centerTitle: true, actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.logout_outlined),
              ),
            ]),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Text("ame"),
                  Container(
                    height: 100,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

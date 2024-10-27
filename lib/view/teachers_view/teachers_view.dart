import 'package:eng_learning_app/view/teachers_view/teachers_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TeachersView extends StatelessWidget {
  const TeachersView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => TeachersViewmodel(),
        builder: (context, TeachersViewmodel viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                "Teachers",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              backgroundColor: Colors.blueGrey[300],
              elevation: 0,
            ),
            body: ListView.builder(
                // itemCount: notificationList.length,
                itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("notificationList[index].image"),
                ),
                title: Text("notification"),
                trailing: Text("12:00  am"),
              );
            }),
          );
        });
  }
}

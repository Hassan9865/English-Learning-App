import 'package:eng_learning_app/components/MyButton.dart';
import 'package:eng_learning_app/view/Quiz/basic_quiz/basic_quiz_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BasicQuizView extends StatelessWidget {
  const BasicQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BasicQuizViewmodel(),
        builder: (context, BasicQuizViewmodel viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(
              title: Text("Basic Quiz"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // height: MediaQuery.of(context).size.height / 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "title",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "description",
                              style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize:
                                    MediaQuery.of(context).size.width / 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Mybutton(
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.black,
                      text: "hskajdlashfdashlfalsdkfhla",
                      ontap: () {}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Mybutton(
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.black,
                      text: "SignsdljfsdjUp",
                      ontap: () {}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  Mybutton(
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.lightBlue,
                      text: "SignsdljfsdjUp",
                      ontap: () {}),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Text("Next =>"),
            ),
          );
        });
  }
}

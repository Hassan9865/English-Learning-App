import 'package:eng_learning_app/components/MyButton.dart';
import 'package:eng_learning_app/components/custum_Textfeild.dart';
import 'package:eng_learning_app/view/register%20view/register_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => RegisterViewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.grey[300],
            body: viewModel.isloading
                ? Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.height / 20,
                      child: CircularProgressIndicator(),
                    ),
                  )
                : SafeArea(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.height / 10,
                              backgroundImage: AssetImage(
                                "assets/eng.jpg",
                              ),

                              // height: 200,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "welcome to Domino app",
                              style: TextStyle(fontSize: 22),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomTextField(
                                label: "Name",
                                icon: Icons.person_outline,
                                controller: viewModel.nameController),
                            CustomTextField(
                                label: "Email",
                                icon: Icons.email,
                                controller: viewModel.emailController),
                            CustomTextField(
                              label: "English Proficiency Level",
                              icon: Icons.energy_savings_leaf_outlined,
                              controller: viewModel.englevelController,
                              isDropdown: true,
                              dropdownItems: [
                                "Beginner",
                                "Intermediate",
                                "Advanced"
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: CustomTextField(
                                      label: "Country",
                                      controller: viewModel.coutryController),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: CustomTextField(
                                    label: "Gender",
                                    controller: viewModel.genderCotroller,
                                    isDropdown: true,
                                    dropdownItems: ["Male", "Female"],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: CustomTextField(
                                    label: "Interests",
                                    controller: viewModel.interestController,
                                    isDropdown: true,
                                    dropdownItems: [
                                      "Vocabulary",
                                      "sdh",
                                      "Grammar"
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: CustomTextField(
                                    label: "Learning Goals",
                                    controller: viewModel.learngoalController,
                                    isDropdown: true,
                                    dropdownItems: [
                                      "Grammar",
                                      "Speaking",
                                      "Writing",
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Mybutton(
                                width: MediaQuery.of(context).size.width / 2,
                                color: Colors.black,
                                text: "SignUp",
                                ontap: () {
                                  // viewModel.singInFunc();
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        });
  }
}

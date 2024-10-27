import 'package:eng_learning_app/components/MyButton.dart';
import 'package:eng_learning_app/components/textfeild.dart';
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
                            MyTextFeid(
                              controller: viewModel.emailController,
                              hintText: "Email",
                              // obscureText: false,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            MyTextFeid(
                              controller: viewModel.paswordController,
                              hintText: "password",
                              // obscureText: !viewModel.isPasswordVisible,
                              //   suffixIcon: IconButton(
                              //       onPressed: () {
                              //         viewModel.togglePasswordVisibility();
                              //         // viewModel.rebuildUi();
                              //         print(viewModel.isPasswordVisible);
                              //       },
                              //       icon: Icon(viewModel.isPasswordVisible
                              //           ? Icons.visibility
                              //           : Icons.visibility_off)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Mybutton(
                                width: double.infinity,
                                color: Colors.black,
                                text: "SignUp",
                                ontap: () {
                                  // viewModel.singInFunc();
                                }),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Already as a member ?  "),
                                InkWell(
                                  onTap: () {
                                    viewModel.navigateToLoginView();
                                  },
                                  child: const Text(
                                    "SignIn",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        });
  }
}

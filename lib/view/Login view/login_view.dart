import 'package:eng_learning_app/components/MyButton.dart';
import 'package:eng_learning_app/components/textfeild.dart';
import 'package:eng_learning_app/view/Login%20view/login_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewmodel(),
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
                            const Icon(
                              Icons.domain_outlined,
                              color: Colors.blueAccent,
                              size: 100,
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
                                text: "sign in",
                                ontap: () {
                                  // viewModel.singInFunc();
                                }),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("not a member ?  "),
                                InkWell(
                                  onTap: () {
                                    viewModel.naviagteToRegister();
                                  },
                                  child: const Text(
                                    "register",
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

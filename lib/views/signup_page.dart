import 'package:flutter/material.dart';
import 'package:simple_shopping_app_interface/views/home_page.dart';
import 'package:simple_shopping_app_interface/widgets/custom_button.dart';
import 'package:simple_shopping_app_interface/widgets/custom_text_field.dart';
import 'package:simple_shopping_app_interface/widgets/title_text.dart';
import '../constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //use "SingleChildScrollView" to make the page scrollable
      body: SingleChildScrollView(
        //use bouncing physics while scrolling
        physics: const BouncingScrollPhysics(),
        child: Form(
          //detect the key of the form
          key: Constants.formKey,
          child: Column(
            children: [
              //call "TitleText" widget to add the title of the page
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    bottom: MediaQuery.of(context).size.height * 0.05),
                child: const TitleText("Sign Up", 40),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  //call "CustomTextField" to ask the user to enter his full name and validate his input
                  child: CustomTextField(
                    controller: Constants.fullnameController,
                    label: "Full Name",
                    prefix: Icons.person,
                    //use "validator" to check if the user input meets requirements and if an error found, it will be added to "errors" list
                    validator: (value) {
                      if (value!.isEmpty) {
                        Constants.errors.add("Please enter your full name");
                        return "Please enter your full name";
                      } else if (!RegExp(r'[A-Z]').hasMatch(value[0])) {
                        Constants.errors
                            .add("First letter should be capitalized");
                        return "First letter should be capitalized";
                      } else {
                        return null;
                      }
                    },
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  //call "CustomTextField" to ask the user to enter his email address and validate his input
                  child: CustomTextField(
                    controller: Constants.emailController,
                    label: "Email Address",
                    prefix: Icons.email,
                    //use "validator" to check if the user input meets requirements and if an error found, it will be added to "errors" list
                    validator: (value) {
                      if (!value!.contains("@")) {
                        Constants.errors.add("Please enter a valid email");
                        return "Please enter a valid email";
                      } else {
                        return null;
                      }
                    },
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  //call "CustomTextField" to ask the user to enter his password and validate his input
                  child: CustomTextField(
                    controller: Constants.passwordController,
                    label: "Password",
                    prefix: Icons.lock,
                    //use "validator" to check if the user input meets requirements and if an error found, it will be added to "errors" list
                    validator: (value) {
                      if (value!.length < 6) {
                        Constants.errors.add(
                            "Password should contain at least 6 characters");
                        return "Password should contain at least 6 characters";
                      } else {
                        return null;
                      }
                    },
                    isPassword: true,
                    obscureText: Constants.isPassHidden,
                    //convert the value of "isPassHidden" variable when pressing the suffix icon to show and hide password
                    onSuffixPressed: () {
                      setState(() {
                        Constants.isPassHidden = !Constants.isPassHidden;
                      });
                    },
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  //call "CustomTextField" to ask the user to confirm his password and validate his input
                  child: CustomTextField(
                    controller: Constants.confirmPasswordController,
                    label: "Confirm Password",
                    prefix: Icons.lock,
                    //use "validator" to check if the user input meets requirements and if an error found, it will be added to "errors" list
                    validator: (value) {
                      if (value!.isEmpty) {
                        Constants.errors.add("Please confirm your password");
                        return "Please confirm your password";
                      } else if (value != Constants.passwordController.text) {
                        Constants.errors.add("Passwords don't match");
                        return "Passwords don't match";
                      } else {
                        return null;
                      }
                    },
                    isPassword: true,
                    obscureText: Constants.isConfirmPassHidden,
                    //convert the value of "isConfirmPassHidden" variable when pressing the suffix icon to show and hide password
                    onSuffixPressed: () {
                      setState(() {
                        Constants.isConfirmPassHidden =
                            !Constants.isConfirmPassHidden;
                      });
                    },
                  )),
              //call "CustomButton" to add a "sign up" button
              CustomButton(
                  onPressed: () {
                    //if the user inputs meet all requirements, an alert dialog will show up using "signUpDialog" function
                    if (Constants.formKey.currentState!.validate()) {
                      signUpDialog();
                    } else {
                      //if even one requirement is not met, a "SnackBar" will show up containing all the errors found in the errors list
                      SnackBar snackBar = SnackBar(
                        content: ListView.builder(
                          shrinkWrap: true,
                          itemCount: Constants.errors.length,
                          itemBuilder: (context, index) {
                            return Text(Constants.errors[index]);
                          },
                        ),
                        duration: const Duration(seconds: 3),
                        //after the "SnackBar" shows up, the errors list will be clear in order to avoid duplicates if the user repeated a certain error
                        onVisible: () {
                          Constants.errors.clear();
                        },
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  text: "Sign up")
            ],
          ),
        ),
      ),
    );
  }

  // a function created to make an alert dialog show up to tell the user that he signed up successfully
  Future<void> signUpDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Success"),
          content: const Text("account created successfully"),
          actions: [
            //a "close button", if the user pressed that button all the textfields will be clear and navigate to "MyHomePage"
            ElevatedButton(
                onPressed: () {
                  //in order to remove the "AlertDialog" from stack then add "MyHomePage" by navigating to it
                  Navigator.pop(context);
                  Constants.fullnameController.clear();
                  Constants.emailController.clear();
                  Constants.passwordController.clear();
                  Constants.confirmPasswordController.clear();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const MyHomePage();
                    },
                  ));
                },
                child: const Text("close"))
          ],
        );
      },
    );
  }
}

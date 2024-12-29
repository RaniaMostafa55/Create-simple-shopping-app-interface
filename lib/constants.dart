import 'package:flutter/material.dart';

class Constants {
  //the variables and lists used in the app
  static PageController controller = PageController();
  static List<String> firstSectionProductsImages = [
    "product1",
    "product2",
    "product3",
  ];
  static List<String> secondSectionProductsImages = [
    "product4",
    "product5",
    "product6",
    "product7"
  ];
  static List<String> secondSectionProductsNames = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4"
  ];
  static List<String> thirdSectionProductsImages = [
    "product1",
    "product2",
    "product3",
    "product5",
    "product6"
  ];
  static List<String> thirdSectionProductsNames = [
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4",
    "Product 5"
  ];
//create some controllers for textFields
  static TextEditingController fullnameController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController confirmPasswordController =
      TextEditingController();
//create the key that will be used in the form
  static final formKey = GlobalKey<FormState>();
//create these two variables to check if the password will be secured in "Password" and "confirmPassword" fields or not
  static bool isPassHidden = true;
  static bool isConfirmPassHidden = true;
//create an empty list to add any error we find to it while taking inputs from user
  static List<String> errors = [];
}

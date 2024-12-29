import 'package:flutter/material.dart';
import 'package:simple_shopping_app_interface/views/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //to remove the debug sign
      debugShowCheckedModeBanner: false,
      title: 'Simple Shopping App Interface',
      home: SignUpPage(),
    );
  }
}

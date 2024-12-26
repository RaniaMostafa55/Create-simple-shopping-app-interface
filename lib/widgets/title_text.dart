import 'package:flutter/material.dart';

//a  class contains the styling of titles used in the app
class TitleText extends StatelessWidget {
  //the variable required in this class and must send value to it using constructor
  final String text;
  const TitleText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    //add "Text" widget with certain font size and weight
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}

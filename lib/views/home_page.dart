import 'package:flutter/material.dart';
import 'package:simple_shopping_app_interface/widgets/title_text.dart';
import 'package:simple_shopping_app_interface/widgets/first_section.dart';
import 'package:simple_shopping_app_interface/widgets/second_section.dart';
import 'package:simple_shopping_app_interface/widgets/third_section.dart';
import '../constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          "Shopping App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      //make the page scrollable
      body: SingleChildScrollView(
        //make the scroll behaviour bouncing
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.all(8.0), child: TitleText("Our Products")),
            //call the widget which contains the first section of the page made with "PageView"
            FirstSection(controller, firstSectionProductsImages),
            //call the widget which contains the second section of the page made with "GridView"
            SecondSection(
                secondSectionProductsNames, secondSectionProductsImages),
            const Padding(
                padding: EdgeInsets.only(bottom: 8.0, left: 8),
                child: TitleText("Hot Offers")),
            //call the widget which contains the third section of the page made with "ListView"
            ThirdSection(thirdSectionProductsNames, thirdSectionProductsImages)
          ],
        ),
      ),
    );
  }
}

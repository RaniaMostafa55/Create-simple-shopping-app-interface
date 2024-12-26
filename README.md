# simple_shopping_app_interface

A new Flutter project.

## Getting Started

This project simulates a simple shopping app by these steps:
1. First of all, I created "widgets" folder which contatins all the widgets used in the app
2. "FirstSectionItem" widget conatins the design of the widget used in the first section of the app
3. "FirstSection" widget uses "PageView.builder" to view multiple ones of "FirstSectionItem" widget in a pageview manner
4. "SecondSectionItem" widget conatins the design of the widget used in the second section of the app
5. "SecondSection" widget uses "GridView.builder" to view multiple ones of "SecondSectionItem" widget in a gridview manner
6. "ThirdSectionItem" widget conatins the design of the widget used in the third section of the app
7. "ThirdSection" widget uses "ListView.builder" to view multiple ones of "ThirdSectionItem" widget in a listview manner and sets the scroll direction to horizontal
8. "StandardImage" widget is used to add an image with common style of circular borders
9. "TitleText" widget is used to add the titles of the app with certain font size and weight
10. In "MyHomePage" class, which is the home page of the app, I used all the created widgets sequentially to create the page in the "body" and added the centeralized title in the appbar with indigo color for the appbar background
11. I made the page scrollable too, by wrapping the "Column" with a "SingleChildScrollView" widget with bouncing behaviour while scrolling
# simple_shopping_app

A new Flutter project.

## Add animation to your shopping app

The next step in this project is to add animation by adding fade transition while navigation from sign up page to home page
In the "onPressed" parameter of the "ElevatedButton" which called "close" in the "AlertDialog", I did the following steps:
1. "Navigator.push" is used to navigate to another page when pressing "close" button
2. "context" is sent as a parameter to determine the page we are currently located in
3. "PageRouteBuilder" is used to identify the page which we will navigate to, and the way of transition
4. Three parameters were passed to "PageRouteBuilder":
    - "pageBuilder" to build the page we need to navigate to by returning the page name and send some parameters in an anonymous function:
        * "context" to determine the page we are currently located in
        * "animation" to determine that animation starts with value 0 and ends with value 1
        * "secondaryAnimation" to add effects on the page we navigate from, if we want
    - "transitionsBuilder" to identify how the transition will be during navigation, it took an anonymous function which took the same parameters as "pageBuilder" in addition to "child" which refers to the page we will navigate to, in the body of the function, an object "acurvedAnimation" was created from class "CurvedAnimation" to determine how we want the transtion speed to be, in "parent" parameter we passed "animation" to tell that transition starts with value 0 as the new page will be invisible and ends with value 1 to be completely visible. In "curve" parameter we passed "Curves.easeInOut" which means that the transition will start with low speed, then high, then low again. Finally, this anonymous function will return "FadeTransition" to make fade out and in transition by putting the "curvedAnimation" object into "opacity" parameter and "child" into "child" parameter to determine the page we will navigate to
    - "transitionDuration" to determine the duration of time which the transition will take, it took "Duration", in which, I determined the duraion of time in milliseconds to be 850
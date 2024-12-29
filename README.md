# simple_shopping_app_interface

A new Flutter project.

## Sign Up page task

The next step in this project is to create the "Sign up" page, and to do that, I created two new widgets:
- The first widget is for the "textFormField" which called "CustomTextField" to take inputs from user, it has some needed variables like:
    1. "controller" to hold the value that the user entered
    2. "label" to tell the user what to enter
    3. "prefix" to detect the prefix icon of the textFormField
    4. "validator" to ensure that the input the user entered is valid and satisfy requirements and if not, an error message will show up and the error will be added to a list of errors as a string
    5. "onSuffixPressed" is to detect what to do when pressing the suffix icon if found
    6. "obscureText" to check if the text the user will enter need to be secured or not and the default value of it is set to "false"
    7. "isPassword" to check if it's a password field or not in order to add the "visibility" icon if it's a password field and the default value of it is set to "false"
- The second widget is for the "ElevatedButton" which called "CustomButton" to enable the user to do a certain action like "Signing up", it has some needed variables like:
    1. "onPressed" to detect what to do when pressing the button
    2. "text" to detect the text on the button
- In the "SignUpPage" page, I used all the created widgets to form the page as following:
    1. First of all, I used "SingleChildScrollView" widget to make the page scrollable and avoid overflow error
    2. As a child, I added the "Form" widget and passed "formKey" variable from "Constants" class to enable me to validate the user inputs
    3. As a child, I put "Column" widget to add all the previously created widgets as following:
        * "TitleText" to put the title of the page which is "Sign Up" 
        * "CustomTextField" to ask the user to enter his full name
        * "CustomTextField" to ask the user to enter his email address
        * "CustomTextField" to ask the user to enter his password
        * "CustomTextField" to ask the user to confirm his password
        * "CustomButton" to valudate the user inputs, if they meet all the requirements an alert dialog will show up by calling function "signUpDialog" which containg a "close" button that navigates to the home page if pressed, but if even one requirement is not met, a "SnackBar" will show up telling us about the errors found using a "ListView.builder" which iterates in the "errors" list and print them as texts and each time the snackBar shows, the "errors" list will be clear to avoid duplicating a certain error through this line of code "Constants.errors.clear()"
    4. In the end of the page code, "signUpDialog" function is created to show up an "AlertDialog" containing a message tells the user that he signed up successfully with a "close" button, if this button is pressed, all the textFormFields will be clear to enable user to enter other data and navigate back to remove this dialog from stack before navigating to the home page to add it into the app stack

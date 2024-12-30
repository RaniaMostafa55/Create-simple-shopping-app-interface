# simple_shopping_app

A new Flutter project.

## Add localization to your application

The next step in this project is to add localization to enable the app to be translated in different languages through these steps:
1. First of all, I added the "easy_localization" package to "pubspec.yaml" file
2. Add "languages" folder containing two json file
3. These two json files are used to put all the text used in the app translated in both Arabic and English languages
4. In the "main.dart" file some lines of code were added
5. "WidgetsFlutterBinding.ensureInitialized()" was added to ensure initializing the app
6. "await EasyLocalization.ensureInitialized()" was added to initialize localization in the app
7. "MyApp" was wrapped with "EasyLocalization" to let the app supports different languages
8. Inside it, "supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')]" was added to let the app supports both Arabic and English languages
9. "path: 'assets/languages'" also was added to define the path of the folder containing translation files
10. "fallbackLocale: const Locale('en', 'US')" was added too, to define the default language of the app
11. Inside "MaterialApp" widget, three lines were added
12. The first one is "localizationsDelegates: context.localizationDelegates" to make the app able to be translated into different languages
13. The second one is "supportedLocales: context.supportedLocales" to define the used supported languages in the app
14. The third one is "locale: context.locale" to tell the app to be translated in the current selected language
15. Note that in the second and third sections of home page it was necessary to check if the current language of the app is Arabic, then use the Arabic names of products list, otherwise use the English names of products list
16. Note also that the button added in the actions of the "appBar" of the home page is to convert the language of the app using method "translate"
17. Method "translate" in home Page checks if the current language of the app is English, then convert it to Arabic, and vice versa
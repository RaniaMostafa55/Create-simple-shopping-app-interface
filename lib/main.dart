import 'package:flutter/material.dart';
import 'package:simple_shopping_app_interface/views/signup_page.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  //ensure initializing the app
  WidgetsFlutterBinding.ensureInitialized();
  //initialize localization in the app
  await EasyLocalization.ensureInitialized();
  runApp(
    //use "EasyLocalization" to let the app supports both Arabic and English languages
    EasyLocalization(
        //define supported languages
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
        //define the path of json files which contain translations
        path: 'assets/languages',
        //set default language of the app
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to make the app able to be translated into different languages
      localizationsDelegates: context.localizationDelegates,
      //define the used supported languages in the app
      supportedLocales: context.supportedLocales,
      //tell the app to be translated in the current selected language
      locale: context.locale,
      //to remove the debug sign
      debugShowCheckedModeBanner: false,
      title: 'Simple Shopping App Interface',
      home: const SignUpPage(),
    );
  }
}

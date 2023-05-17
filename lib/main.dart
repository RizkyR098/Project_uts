import 'package:flutter/material.dart';
import 'package:flutter_test_3/pages/HomePage.dart';
import 'package:flutter_test_3/pages/SettingsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(207, 207, 207, 1),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 0, 0, 120),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/" :(context) => HomePage(),
        "settingsPage" :(context) => SettingsPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class ThiefTheme {
  static TextTheme darkTextTheme = TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Papyrus',
        fontSize: 28.0,
        color: Colors.amber,
          fontWeight: FontWeight.w700
      ),
    bodyText2: TextStyle(
      fontFamily: 'Carleton',
      fontSize: 24.0,
      color: Colors.amber,
      fontWeight: FontWeight.w800,
      height: 1.5
    ),
      headline1: TextStyle(
        fontFamily: 'Charlesworth',
        fontSize: 36.0,
        color: Colors.grey[300],
          fontWeight: FontWeight.w800
      ),
      headline2: TextStyle(
        fontFamily: 'Carleton',
        fontSize: 42.0,
        //color: Colors.deepPurpleAccent,
        //color: Color.fromRGBO(144, 104, 255, 1)
        color: Color.fromRGBO(202, 185, 250, 1)
      ),
      headline3: TextStyle(
        fontFamily: 'Carleton',
        fontSize: 28.0,
        color: Colors.amber,
      ),
    headline4: TextStyle(
      fontFamily: 'Charlesworth',
      fontSize: 24.0,
      //color: Colors.blue,
        color: Colors.grey[300],
        fontWeight: FontWeight.w800
    ),
    headline5: TextStyle(
      fontFamily: 'Charlesworth',
      fontSize: 18.0,
      //color: Colors.blue,
        color: Colors.grey[300],
        fontWeight: FontWeight.w800
    ),
    headline6: TextStyle(
        fontFamily: 'Charlesworth',
        fontSize: 14.0,
        color: Colors.amberAccent,
      fontWeight: FontWeight.bold,
      letterSpacing: 2.0,
      height: 1.5
    ),
    subtitle1: TextStyle(
      fontFamily: 'Carleton',
      fontSize: 20.0,
      color: Colors.cyanAccent,
      fontWeight: FontWeight.bold,
    ),
  );

  static ThemeData thiefTheme() {
    return ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.grey[400],
          //backgroundColor: Color.fromRGBO(73, 55, 124, 1)
            backgroundColor: Color.fromRGBO(53, 49, 82, 1)
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor: Colors.tealAccent, backgroundColor: Colors.blueGrey),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.deepPurpleAccent,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Charlesworth',
          fontSize: 18
        )),
        cardColor: Colors.black,
        textTheme: darkTextTheme);
  }


}
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:thief_app/screens/components_export.dart';
import 'package:thief_app/home.dart';
import 'package:thief_app/screens/quiz_page.dart';
import 'package:thief_app/screens/scores_page.dart';
import 'thief_theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization(null);

  runApp(const MyApp());
}

Future initialization(BuildContext context) async {
  await Future.delayed(Duration(milliseconds: 200));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThiefTheme.thiefTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thief World',
      theme: theme,
      darkTheme: theme,
      initialRoute: '/',
      routes: {
        '/home': (context) => const Home(title: 'Thief Lore'),
        '/' : (context) => const Home(title: 'Thief Lore'),
        '/locations' : (context) => PageSecond(),
        '/tests' : (context) => PageThird(),
        '/about' : (context) => PageFourth(),
        '/tests/quiz': (context) => QuizPage(),
        '/tests/scores' : (context) => ScoresPage()
      },
    );
  }
}

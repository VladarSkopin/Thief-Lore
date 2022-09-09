import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:thief_app/components/components.dart';
import 'package:thief_app/home.dart';
import 'package:thief_app/splash.dart';
import 'thief_theme.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.removeAfter(initialization);
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await initialization(null);

  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final theme = ThiefTheme.light();
    final theme = ThiefTheme.thiefTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thief World',
      theme: theme,
      initialRoute: '/',
      routes: {
        // '/': (context) => AnimatedSplashScreen(
        //     backgroundColor: Colors.black,
        //     splashTransition: SplashTransition.slideTransition,
        //     splash: Scaffold(
        //         backgroundColor: Colors.black,
        //         body: Center(
        //           child: Container(
        //             //child: Text('Splash Screen'),
        //             child: Image(image: AssetImage('assets/logos/thief_logo_2.png')),
        //           ),
        //         )
        //     ),
        //     nextScreen: Home(title: 'Thief Lore'),
        // ),
        //'/' : (context) => const Splash(),
        '/home': (context) => const Home(title: 'Thief Lore'),
        '/' : (context) => const Home(title: 'Thief Lore'),
        '/locations' : (context) => PageSecond(),
        '/tests' : (context) => PageThird(),
        '/about' : (context) => PageFourth()
      },
      //home: const Home(title: 'Thief Lore'),
      // home: MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(create: (context) => TabManager()),
      //   ],
      //     child: const Home(title: 'Thief Lore')),
    );
  }
}

import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super (key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome()  async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    //Navigator.pushNamed(context, '/home');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(title: 'Thief Lore')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          child: Container(
            //child: Text('Splash Screen'),
            child: Image(image: AssetImage('assets/logos/thief_logo_2.png')),
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';


class PageThird extends StatefulWidget {
  @override
  State<PageThird> createState() => _PageThirdState();
}

class _PageThirdState extends State<PageThird> {

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey.shade800,
          appBar: (ModalRoute.of(context)?.settings.name != '/') ? AppBar(title: Text('Quiz',
          style: Theme.of(context).textTheme.headline4)) : null,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 190,
                    height: 80,
                    child: AvatarGlow(
                      endRadius: 190,
                      shape: BoxShape.rectangle,
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/tests/quiz');
                          },
                          color: Colors.deepPurple,
                          elevation: 6.0,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Start Quiz',
                            style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.grey[300]))),
                    ),
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    width: 190,
                    height: 80,
                    child: AvatarGlow(
                      endRadius: 190,
                      shape: BoxShape.rectangle,
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/tests/scores');
                          },
                          color: Colors.deepPurple,
                          elevation: 6.0,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text(
                              'My Scores', style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.grey[300]),
                          )
                      ),
                    ),
                  )
                ],
              ),
            )),
      );
  }
}

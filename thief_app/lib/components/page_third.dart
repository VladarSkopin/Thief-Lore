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
          appBar: (ModalRoute.of(context)?.settings.name != '/') ? AppBar(title: Text('Tests',
          style: Theme.of(context).textTheme.headline4)) : null,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 220,
                    height: 50,
                    child: AvatarGlow(
                      endRadius: 220,
                      shape: BoxShape.rectangle,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Choose Test',
                              style: TextStyle(
                                fontFamily: 'JD',
                                fontSize: 24.0,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                  ),
                  const SizedBox(height: 70),
                  SizedBox(
                    width: 220,
                    height: 50,
                    child: AvatarGlow(
                      endRadius: 220,
                      shape: BoxShape.rectangle,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Random Test',
                              style: TextStyle(
                                fontFamily: 'JD',
                                fontSize: 24.0,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                  )
                ],
              ),
            )),
      );
  }
}

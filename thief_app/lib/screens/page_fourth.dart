import 'package:flutter/material.dart';
import 'package:thief_app/screens/author_card.dart';

class PageFourth extends StatefulWidget {
  @override
  State<PageFourth> createState() => _PageFourthState();
}

class _PageFourthState extends State<PageFourth> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: (ModalRoute.of(context)?.settings.name != '/') ? AppBar(title: Text('About',
            style: Theme.of(context).textTheme.headline4)) : null,
        body: SafeArea(
          child:
          ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                AuthorCard(
                    authorName: 'Alexander \'Sadovnik\'',
                    title: '\"Thief Lore App\"',
                    authorDescription:
                        '  I dedicate this app to my dear kitty cat. I want to thank you for all your support.\n\n  '
                        '  I would like to say thank you to all the LGS, Eidos and Ion Storm team members for creating such an incredible game.\n\n  '
                        '  Also thanks to all FM-making guys, your work brings joy to my life.\n\n'
                        '  If you wish to contact me, to complain about my app, your life, global warming, pandemic, or for some other reasons - find me on Discord:',
                    authorUrlPath: 'https://discord.gg/4bstXpqn ',
                    imageProvider: AssetImage('assets/characters_pics/me.jpg'),
                ),
                SizedBox(height: 200)
              ]),
        ),
      );

  }
}

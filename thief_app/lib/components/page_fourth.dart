import 'package:flutter/material.dart';
import 'package:thief_app/components/author_card.dart';

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
                    '  This app is my college Flutter project.\n\n  '
                        'With \'Thief Lore\' app you can find information about game characters, Thief world locations, organizations, explore soundtracks and interact with the in-game items.\n\n'
                        '  You can also take a quiz after learning about Thief Lore.\n\n'
                        'I dedicate this app to my dear kitty cat. Thank you for your support and many useful insights.\n\n  '
                        'I would like to say thank you to all the LGS, Eidos and Ion Storm team members for creating such an incredible game.\n\n  '
                        'We will never forget your investment in modern game industry.\n\n  '
                        'Also thanks to all FM-making guys, your work brings joy to our lives.\n\n'
                        'If you wish to contact me, to complain about my app, your life, global warming, pandemic, or for some other reason - find me on Telegram: @Sasha_Jedi ',
                    imageProvider: AssetImage('assets/characters_pics/me.jpg'),
                ),
                SizedBox(height: 200)
              ]),
        ),
      );

  }
}

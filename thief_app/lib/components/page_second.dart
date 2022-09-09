import 'package:flutter/material.dart';
import 'location_cards_list.dart';
import 'location_options_list.dart';

class PageSecond extends StatefulWidget {
  @override
  State<PageSecond> createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(31, 27, 9, 1),
          appBar: (ModalRoute.of(context)?.settings.name != '/') ? AppBar(title: Text('World Map',
            style: Theme.of(context).textTheme.headline1)) : null,
          body: ListView(
              scrollDirection: Axis.vertical, children: [
            LocationCardsList.buildLocationCardList(context),
            const SizedBox(height: 10),
            LocationOptionsList.buildLocationOptionsList(context),
            const SizedBox(height: 40),
          ]),
        ),
      );
  }
}

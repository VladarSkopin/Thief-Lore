import 'package:flutter/material.dart';
import 'package:thief_app/home.dart';
import 'components.dart';
import 'package:page_transition/page_transition.dart';

class PageFirst extends StatefulWidget {

  @override
  State<PageFirst> createState() => _PageFirstState();
}

class _PageFirstState extends State<PageFirst> {
  @override
  Widget build(BuildContext context) {

    return Container(
      //color: Colors.cyanAccent.withOpacity(0.4),
      //color: Colors.amber[100]?.withOpacity(0.2),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff37876b),
                Color(0xff278271),
                Color(0xff197c76),
                Color(0xff117679),
                Color(0xff14707b),
                Color(0xff1e697a),
                Color(0xff286377),
                Color(0xff315c73),
              ],
              tileMode: TileMode.mirror,
            )
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
            itemCount: Buttons.buttons.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(context, PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 600),
                      child:
                      (index == 0) ?
                        CharacterList() :
                      (index == 1) ?
                        FactionList() :
                      (index == 2) ?
                        ItemList() :
                      (index == 3) ?
                        SoundtrackList() :
                      (index == 4) ?
                        PageSecond() :
                      (index == 5) ?
                        PageThird() :
                      (index == 6) ?
                        PageFourth() :
                      Container(
                          child: Text("Unknown error"),
                          color: Colors.grey,
                        )
                    ));
                  },
                  child: buildButtonCard(Buttons.buttons[index]));
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 1);
            },
        ),
      ),
    );
  }

  Widget buildButtonCard(Buttons button) {
    return Column(
      children: [
        SizedBox(height: 20),
        Card(
          elevation: 8.0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Text(button.label,
                  style: Theme.of(context).textTheme.headline2),
            ),
          ),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
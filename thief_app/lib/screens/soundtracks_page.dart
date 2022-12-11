import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thief_app/screens/soundtrack_screen.dart';
import '../model/soundtracks.dart';

class SoundtrackList extends StatefulWidget {
  @override
  State<SoundtrackList> createState() => _SoundtrackListState();
}

class _SoundtrackListState extends State<SoundtrackList> {
  final soundtracks = Soundtracks.soundtracksThief;
  late ScrollController _scrollController;
  bool _showBtn = false;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      double _showOffset = 300.0;

      if (_scrollController.offset > _showOffset) {
        setState(() {
          _showBtn = true;
        });
      } else {
        setState(() {
          _showBtn = false;
        });
      }
    });

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Text('Soundtracks',
                  style: Theme.of(context).textTheme.headline4)),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff6c76a3),
                    Color(0xff5c79a1),
                    Color(0xff507b9b),
                    Color(0xff487c94),
                    Color(0xff467c8b),
                    Color(0xff497b82),
                    Color(0xff4f7a79),
                    Color(0xff567871),
                  ],
                  tileMode: TileMode.mirror,
                )
            ),
            child: ListView.builder(
              controller: _scrollController,
                itemCount: soundtracks.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: ShapeDecoration(
                          color: const Color.fromRGBO(84, 41, 185, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                              color: Color.fromRGBO(172, 172, 205, 1),
                              width: 0.5
                            )
                          ),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context, PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 600),
                                child: SoundtrackScreen(
                                  soundtrackName: soundtracks[index].title,
                                  soundtrackPath: soundtracks[index].path,
                                  imagePath: soundtracks[index].imagePath,
                                )
                            ));
                          },
                          elevation: 8.0,
                          child: Column(
                            children: [
                            ListTile(
                              leading: Icon(Icons.album, size: 30, color: Colors.grey[400]),
                              title: Text(soundtracks[index].title,
                                  style: Theme.of(context).textTheme.headline6),
                            ),
                            ],
                          ),
                        ),
                      ),
                  (index == soundtracks.length - 1) ? const SizedBox(
                  height: 60,
                  ) :
                  const SizedBox(
                  height: 20,
                  )
                    ],
                  );
                }),
          ),
        floatingActionButton: AnimatedOpacity(
          duration: const Duration(milliseconds: 400),
          opacity: _showBtn ? 0.8 : 0, // set opacity to 1 on visible, or hide
          child: Transform.scale(
            scale: 1.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  onPressed: () {
                    _scrollController.animateTo(
                        0, // scroll offset to go
                        duration: const Duration(milliseconds: 1000), // duration of scroll
                        curve: Curves.decelerate // scroll type
                    );
                  },
                  child: const Icon(Icons.arrow_upward, size: 40)
              ),
            ),
          ),
        ),
      ),
    );
  }


}

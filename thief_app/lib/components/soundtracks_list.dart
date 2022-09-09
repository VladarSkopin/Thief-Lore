import 'package:flutter/material.dart';
import 'soundtracks.dart';
import 'package:just_audio/just_audio.dart';

class SoundtrackList extends StatefulWidget {
  @override
  State<SoundtrackList> createState() => _SoundtrackListState();
}

class _SoundtrackListState extends State<SoundtrackList> {
  final soundtracks = Soundtracks.soundtracksThief;
  late ScrollController _scrollController;
  bool _showBtn = false;

  /*
  This initializes AudioPlayer when the UI loads. It will also dispose the
  audio player and release the resources when the app closes.
   */

  late AudioPlayer player;

  @override
  void initState() {
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
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
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
                          elevation: 8.0,
                          onPressed: () async {
                            if (index == 0) {
                              await player.setAsset('assets/audio/the_blue_heron_inn.mp3');
                              player.play();
                            } else if (index == 1) {
                              await player.setAsset('assets/audio/rutherford_castle.mp3');
                              player.play();
                            } else if (index == 2) {
                              await player.setAsset('assets/audio/south_quarter.mp3');
                              player.play();
                            } else if (index == 3) {
                              await player.setAsset('assets/audio/stonemarket.mp3');
                              player.play();
                            } else if (index == 4) {
                              await player.setAsset('assets/audio/the_keeper_library.mp3');
                              player.play();
                            } else if (index == 5) {
                              await player.setAsset('assets/audio/the_docks.mp3');
                              player.play();
                            } else if (index == 6) {
                              await player.setAsset('assets/audio/old_quarter.mp3');
                              player.play();
                            } else if (index == 7) {
                              await player.setAsset('assets/audio/auldale.mp3');
                              player.play();
                            } else if (index == 8) {
                              await player.setAsset('assets/audio/shalebridge_cradle.mp3');
                              player.play();
                            } else if (index == 9) {
                              await player.setAsset('assets/audio/wieldstrom_museum.mp3');
                              player.play();
                            } else if (index == 10) {
                              await player.setAsset('assets/audio/intervention.mp3');
                              player.play();
                            } else if (index == 11) {
                              await player.setAsset('assets/audio/shipping_and_receiving.mp3');
                              player.play();
                            } else if (index == 12) {
                              await player.setAsset('assets/audio/framed.mp3');
                              player.play();
                            } else if (index == 13) {
                              await player.setAsset('assets/audio/the_pagans.mp3');
                              player.play();
                            } else if (index == 14) {
                              await player.setAsset('assets/audio/trail_of_blood.mp3');
                              player.play();
                            } else if (index == 15) {
                              await player.setAsset('assets/audio/sabotage_at_soulforge.mp3');
                              player.play();
                            } else if (index == 16) {
                              await player.setAsset('assets/audio/i_just_saved_the_world.mp3');
                              player.play();
                            } else {
                              // await player.setAsset('assets/audio/credits.mp3');
                              // player.play();
                            }
                          },
                          child:
                          ListTile(
                            leading: Icon(Icons.album, size: 30, color: Colors.grey[400]),
                            title: Text(soundtracks[index].title,
                                style: Theme.of(context).textTheme.headline6),
                          )
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

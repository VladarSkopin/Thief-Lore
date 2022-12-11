import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundtrackScreen extends StatefulWidget {
  final String soundtrackName;
  final String soundtrackPath;
  final String imagePath;

  const SoundtrackScreen({
    Key? key,
    required this.soundtrackName,
    required this.soundtrackPath,
    required this.imagePath
  }) : super(key: key);

  @override
  State<SoundtrackScreen> createState() => _SoundtrackScreenState();
}

class _SoundtrackScreenState extends State<SoundtrackScreen> {

  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero; // duration of the song
  Duration position = Duration.zero; // current position of the song

  @override
  void initState() {
    super.initState();

    setAudio();

    // state: PLAYING, PAUSED, STOPPED
    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });

    // listen to the audio duration
    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    // listen to audio position
    player.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });

  }


  Future setAudio() async {
    final audioPLayer = AudioCache(prefix: 'assets/');
    final url = await audioPLayer.load(widget.soundtrackPath);
    await player.setUrl(url.path, isLocal: true);
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
          appBar: AppBar(title: Text(widget.soundtrackName)),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff1a1933),
                    Color(0xff111e36),
                    Color(0xff052031),
                    Color(0xff022734),
                    Color(0xff083543),
                    Color(0xff14363d),
                    Color(0xff1f3739),
                    Color(0xff314442),
                  ],
                  tileMode: TileMode.mirror,
                )
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: ShapeDecoration(
                    color: const Color(0xff323265),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: const BorderSide(
                            color: Color.fromRGBO(172, 172, 205, 1),
                            width: 0.5
                        )
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Image.asset(widget.imagePath),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Slider(
                          min: 0,
                          max: duration.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: (value) async {
                            final position = Duration(seconds: value.toInt());
                            await player.seek(position);

                            // play audio if was paused
                            await player.resume();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(formatTime(position), style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14)),
                            Text(formatTime(duration), style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14))
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 35,
                        child: IconButton(
                          icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow
                          ),
                          iconSize: 50,
                          onPressed: () async {
                            if (isPlaying) {
                              await player.pause();
                            } else {
                              //await player.play(widget.soundtrackPath, isLocal: true);
                              await player.resume();
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 20)
                    ],
                  )
                ),

              ],
            ),
          ),
        ));
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds
    ].join(':');
  }
}

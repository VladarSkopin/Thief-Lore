 import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
 import 'package:just_audio/just_audio.dart';

class ScoresPage extends StatefulWidget {
   const ScoresPage({Key? key}) : super(key: key);

  @override
  State<ScoresPage> createState() => _ScoresPageState();
}

class _ScoresPageState extends State<ScoresPage> {

  late AudioPlayer player;

  int charactersQuizScore = 0;
  int factionsQuizScore = 0;
  int itemsQuizScore = 0;
  int locationsQuizScore = 0;

  @override
  void initState() {
    super.initState();
    loadScores();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }


  Future<void> loadScores() async {
    final prefs = await SharedPreferences.getInstance();
    int charQuiz = await prefs.getInt('Characters') ?? 0;
    int factQuiz = await prefs.getInt('Factions') ?? 0;
    int itemQuiz = await prefs.getInt('Items') ?? 0;
    int locQuiz = await prefs.getInt('Locations') ?? 0;

    setState(() {
      //charactersQuizScore = await prefs.getInt('Characters') ?? 0;
      //factionsQuizScore = await prefs.getInt('Factions') ?? 0;
      //itemsQuizScore = await prefs.getInt('Items') ?? 0;
      //locationsQuizScore = await prefs.getInt('Locations') ?? 0;
      charactersQuizScore = charQuiz;
      factionsQuizScore = factQuiz;
      itemsQuizScore = itemQuiz;
      locationsQuizScore = locQuiz;
    });

    //print('CHARACTERS SCORE: $charactersQuizScore');
    //print('FACTIONS SCORE: $factionsQuizScore');
    //print('ITEMS SCORE: $itemsQuizScore');
    //print('LOCATIONS SCORE: $locationsQuizScore');
    //print('---------------');
  }

   @override
   Widget build(BuildContext context) {
     final _width = MediaQuery.of(context).size.width * 0.45;
     return Scaffold(
       //backgroundColor: Colors.black,
       appBar: AppBar(title: Text('Quiz Scores', style: Theme.of(context).textTheme.headline4)),
       body: Padding(
         padding: const EdgeInsets.all(20),
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Image(image: AssetImage('assets/quiz_pics/characters.png'), width: _width, height: _width),
               SizedBox(height: 8),
               Row(
                 children: [
                   Text('Characters Quiz: ', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20)),
                   SizedBox(width: 20),
                   Text('$charactersQuizScore / 5', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20))
                 ],
               ),
               SizedBox(height: 12),
               ColoredBox(
                 color: Colors.black,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
                   child: Row(
                     children: [
                       Text('Loot: ', style: TextStyle(color: Colors.grey[300], fontSize: 18)),
                       Image.asset(getImgUrlFromQuizScore(charactersQuizScore), scale: charactersQuizScore == 5 ? 5 : charactersQuizScore == 0 ? 14 : 8)
                     ],
                   ),
                 ),
               ),
               Divider(color: Colors.grey, height: 30, thickness: 1),
               SizedBox(height: 20),
               Image(image: AssetImage('assets/quiz_pics/factions.png'), width: _width, height: _width),
               SizedBox(height: 8),
               Row(
                 children: [
                   Text('Factions Quiz: ', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20)),
                   SizedBox(width: 20),
                   Text('$factionsQuizScore / 5', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20))
                 ],
               ),
               SizedBox(height: 12),
               ColoredBox(
                 color: Colors.black,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
                   child: Row(
                     children: [
                       Text('Loot: ', style: TextStyle(color: Colors.grey[300], fontSize: 18)),
                       Image.asset(getImgUrlFromQuizScore(factionsQuizScore), scale: factionsQuizScore == 5 ? 5 : factionsQuizScore == 0 ? 14 : 8)
                     ],
                   ),
                 ),
               ),
               Divider(color: Colors.grey, height: 30, thickness: 1),
               SizedBox(height: 20),
               Image(image: AssetImage('assets/quiz_pics/items.png'), width: _width, height: _width),
               SizedBox(height: 8),
               Row(
                 children: [
                   Text('Items Quiz: ', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20)),
                   SizedBox(width: 20),
                   Text('$itemsQuizScore / 5', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20))
                 ],
               ),
               SizedBox(height: 12),
               ColoredBox(
                 color: Colors.black,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
                   child: Row(
                     children: [
                       Text('Loot: ', style: TextStyle(color: Colors.grey[300], fontSize: 18)),
                       Image.asset(getImgUrlFromQuizScore(itemsQuizScore), scale: itemsQuizScore == 5 ? 5 : itemsQuizScore == 0 ? 14 : 8)
                     ],
                   ),
                 ),
               ),
               Divider(color: Colors.grey, height: 30, thickness: 1),
               SizedBox(height: 20),
               Image(image: AssetImage('assets/quiz_pics/locations.png'), width: _width, height: _width),
               SizedBox(height: 8),
               Row(
                 children: [
                   Text('Locations Quiz: ', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20)),
                   SizedBox(width: 20),
                   Text('$locationsQuizScore / 5', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 20))
                 ],
               ),
               SizedBox(height: 12),
               ColoredBox(
                 color: Colors.black,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
                   child: Row(
                     children: [
                       Text('Loot: ', style: TextStyle(color: Colors.grey[300], fontSize: 18)),
                       Image.asset(getImgUrlFromQuizScore(locationsQuizScore), scale: locationsQuizScore == 5 ? 5 : locationsQuizScore == 0 ? 14 : 8)
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 40),
               Align(
                 alignment: Alignment.center,
                 child: MaterialButton(
                     onPressed: () {


                       showDialog(
                           context: context,
                           builder: (BuildContext context) => AlertDialog(
                             backgroundColor: Color(0xFF7C5595),
                             title: const Text(
                                 'Are you sure you want to reset all your quiz scores?',
                                 style: TextStyle(
                                     color: Colors.white, fontSize: 20),
                                 textAlign: TextAlign.center),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(50)),
                             actionsAlignment: MainAxisAlignment.center,
                             actions: [
                               TextButton(
                                 onPressed: () async {
                                   Navigator.pop(context);
                                   final prefs = await SharedPreferences.getInstance();
                                   await prefs.setInt('Characters', 0);
                                   await prefs.setInt('Factions', 0);
                                   await prefs.setInt('Items', 0);
                                   await prefs.setInt('Locations', 0);

                                   setState(() {
                                     charactersQuizScore = 0;
                                     factionsQuizScore = 0;
                                     itemsQuizScore = 0;
                                     locationsQuizScore = 0;
                                   });

                                   await player.setAsset('assets/audio/snd_test_btn_finish.wav');
                                   player.play();

                                   showDialog(
                                       context: context,
                                       builder: (BuildContext context) => AlertDialog(
                                         backgroundColor: Color(0xFF7C5595),
                                         title: const Text(
                                             'All scores are reset',
                                             style: TextStyle(
                                                 color: Colors.white, fontSize: 20),
                                             textAlign: TextAlign.center),
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(50)),
                                         actionsAlignment: MainAxisAlignment.center,
                                         actions: [
                                           TextButton(
                                             onPressed: () => Navigator.pop(context),
                                             child: const Text('ОK',
                                                 style: TextStyle(
                                                     color: Colors.white, fontSize: 20)),
                                           ),
                                         ],
                                       ));
                                 },
                                 child: const Text('YES',
                                     style: TextStyle(
                                         color: Colors.white, fontSize: 20)),
                               ),
                               TextButton(
                                 onPressed: () => Navigator.pop(context),
                                 child: const Text('CANCEL',
                                     style: TextStyle(
                                         color: Colors.white, fontSize: 20)),
                               ),
                             ],
                           ));



                     },
                     color: Colors.deepPurple,
                     elevation: 6.0,
                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                     ),
                 child: Text('RESET ALL SCORES', style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white, fontSize: 20))),
               ),
               SizedBox(height: 80),
             ],
           ),
         ),
       ),
     );
   }

   String getImgUrlFromQuizScore(int score) {
    String imgUrl = 'assets/quiz_pics/coin.PNG';
    switch (score) {
      case 1:
        imgUrl = 'assets/quiz_pics/goblet.PNG';
        break;
      case 2:
        imgUrl = 'assets/quiz_pics/golden_dice.PNG';
        break;
      case 3:
        imgUrl = 'assets/quiz_pics/rare_spice.PNG';
        break;
      case 4:
        imgUrl = 'assets/quiz_pics/gem_ring.PNG';
        break;
      case 5:
        imgUrl = 'assets/quiz_pics/precursor_mask.PNG';
        break;
    }
    return imgUrl;
   }
}

 import 'package:flutter/material.dart';

class ScoresPage extends StatefulWidget {
   const ScoresPage({Key? key}) : super(key: key);

  @override
  State<ScoresPage> createState() => _ScoresPageState();
}

class _ScoresPageState extends State<ScoresPage> {

  int charactersQuizScore = 1;
  int factionsQuizScore = 1;
  int itemsQuizScore = 1;
  int locationsQuizScore = 1;

   @override
   Widget build(BuildContext context) {
     final _width = MediaQuery.of(context).size.width * 0.45;
     return Scaffold(
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
                                   //await UsersDatabase.instance.deleteAllUsers();

                                   setState(() {
                                     charactersQuizScore = 0;
                                     factionsQuizScore = 0;
                                     itemsQuizScore = 0;
                                     locationsQuizScore = 0;
                                   });

                                   showDialog(
                                       context: context,
                                       builder: (BuildContext context) => AlertDialog(
                                         backgroundColor: Color(0xFF7C5595),
                                         title: const Text(
                                             'All scores are reseted',
                                             style: TextStyle(
                                                 color: Colors.white, fontSize: 20),
                                             textAlign: TextAlign.center),
                                         shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(50)),
                                         actionsAlignment: MainAxisAlignment.center,
                                         actions: [
                                           TextButton(
                                             onPressed: () => Navigator.pop(context),
                                             child: const Text('Ок',
                                                 style: TextStyle(
                                                     color: Colors.white, fontSize: 28)),
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
                 child: Text('RESET ALL SCORES', style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white, fontSize: 20),)),
               ),
               SizedBox(height: 80),
             ],
           ),
         ),
       ),
     );
   }
}

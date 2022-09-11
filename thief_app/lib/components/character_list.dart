import 'package:flutter/material.dart';
import 'character.dart';
import 'character_card.dart';
import 'package:page_transition/page_transition.dart';

class CharacterList extends StatefulWidget {
  @override
  State<CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  final characterList = Character.characters;
  late ScrollController _scrollController;
  bool _showBtn = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      //double showOffset = 300.0;
      double _showOffset = MediaQuery.of(context).size.height / 2;
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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title:
                Text("Characters", style: Theme.of(context).textTheme.headline1)),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff6e4e2e),
                  Color(0xff714732),
                  Color(0xff714037),
                  Color(0xff6e3a3e),
                  Color(0xff683745),
                  Color(0xff5f354c),
                  Color(0xff533451),
                  Color(0xff453454),
                ],
                tileMode: TileMode.mirror,
              )
          ),
          child: ListView.builder(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              itemCount: characterList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Transform.scale(
                      scale: 0.9,
                      child: Card(
                        elevation: 8.0,
                        shadowColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Column(children: [
                          SizedBox(height: 20),
                          Text(characterList[index].name,
                              style: Theme.of(context).textTheme.headline2),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                    //alignment: Alignment.center,
                                    duration: Duration(milliseconds: 600),
                                    child:
                                    (index == 0) ?
                                      CharacterCard.buildGarrettCard(context) :
                                    (index == 1) ?
                                      CharacterCard.buildBassoCard(context) :
                                    (index == 2) ?
                                      CharacterCard.buildArtemusCard(context) :
                                    (index == 3) ?
                                      CharacterCard.buildVictoriaCard(context) :
                                    (index == 4) ?
                                      CharacterCard.buildConstantineCard(context) :
                                    (index == 5) ?
                                      CharacterCard.buildKarrasCard(context) :
                                    (index == 6) ?
                                      CharacterCard.buildOrlandCard(context) :
                                    Scaffold(
                                      appBar: AppBar(),
                                      body: Container(
                                        child: Center(child: Text("Unknown character card",
                                          style: Theme.of(context).textTheme.headline1?.copyWith(
                                              color: Colors.amber,
                                              fontSize: 20
                                          ),)),
                                        color: Colors.black,
                                      ),
                                    )
                                ));
                            },
                            child:

                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage(characterList[index].image),
                                  width: 250,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                              )

                            /*
                            Image(
                                image: AssetImage(characterList[index].image),
                              width: 250,
                              height: 250,
                              fit: BoxFit.cover,
                            )
                            */


                            /*
                            Container(
                              padding: const EdgeInsets.all(16.0),
                             /*
                              constraints: const BoxConstraints.expand(
                                width: 350,
                                height: 250,
                              ),
                              */
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(characterList[index].image),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            */


                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(characterList[index].description,
                                style: Theme.of(context).textTheme.bodyText2,
                            textAlign: TextAlign.center),
                          ),
                          SizedBox(height: 20),
                        ]),
                      ),
                    ),
                (index == characterList.length - 1) ? SizedBox(
                height: 50,
                ) :
                SizedBox(
                height: 1,
                )
                  ],
                );
              },
            /*
            separatorBuilder: (context, index) {
              return SizedBox(
                    height: 20,
                  );
            },
            */
          ),
        ),
        floatingActionButton: AnimatedOpacity(
          duration: Duration(milliseconds: 400),
          opacity: _showBtn ? 0.8 : 0, // set opacity to 1 on visible, or hide
          child: Transform.scale(
            scale: 1.2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  _scrollController.animateTo(
                      0, // scroll offset to go
                      duration: Duration(milliseconds: 800), // duration of scroll
                      curve: Curves.fastOutSlowIn // scroll type
                  );
                },
                child: Icon(Icons.arrow_upward, size: 40)
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'items.dart';
import 'item_card.dart';
import 'package:just_audio/just_audio.dart';

class ItemList extends StatefulWidget {
  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  final itemList = Items.gameItems;
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
      //double _showOffset = 300.0;
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
        //backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff46809e),
                  Color(0xff4b7b9c),
                  Color(0xff517599),
                  Color(0xff577095),
                  Color(0xff5c6a90),
                  Color(0xff61658b),
                  Color(0xff655f84),
                  Color(0xff695a7d),
                ],
                tileMode: TileMode.mirror,
              )
          ),
          child: GridView.builder(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            itemCount: itemList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 7.0, mainAxisSpacing: 7.0),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                          if (index == 0) {
                            player.setAsset(
                                'assets/audio/snd_health_potion.wav');
                            player.play();
                            return ItemCard.buildHealthPotionCard(context);
                          } else if (index == 1) {
                            player.setAsset(
                                'assets/audio/snd_invisibility_potion.WAV');
                            player.play();
                            return ItemCard.buildInvisibilityPotionCard(
                                context);
                          } else if (index == 2) {
                            player
                                .setAsset(
                                'assets/audio/snd_slowfall_potion.WAV');
                            player.play();
                            return ItemCard.buildSlowFallPotionCard(context);
                          } else if (index == 3) {
                            player.setAsset(
                                'assets/audio/snd_scouting_orb.wav');
                            player.play();
                            return ItemCard.buildScoutingOrbCard(context);
                          } else if (index == 4) {
                            player.setAsset('assets/audio/snd_flashbomb.WAV');
                            player.play();
                            return ItemCard.buildFlashBombCard(context);
                          } else if (index == 5) {
                            player.setAsset('assets/audio/snd_flash_mine.wav');
                            player.play();
                            return ItemCard.buildFlashMineCard(context);
                          } else if (index == 6) {
                            player.setAsset(
                                'assets/audio/snd_noisemaker_arrow.wav');
                            player.play();
                            return ItemCard.buildNoiseArrowCard(context);
                          } else if (index == 7) {
                            player.setAsset('assets/audio/snd_water_arrow.WAV');
                            player.play();
                            return ItemCard.buildWaterArrowCard(context);
                          } else if (index == 8) {
                            player.setAsset('assets/audio/snd_fire_arrow.WAV');
                            player.play();
                            return ItemCard.buildFireArrowCard(context);
                          } else if (index == 9) {
                            player.setAsset('assets/audio/snd_moss_arrow.wav');
                            player.play();
                            return ItemCard.buildMossArrowCard(context);
                          } else if (index == 10) {
                            player.setAsset('assets/audio/snd_gas_arrow.wav');
                            player.play();
                            return ItemCard.buildGasArrowCard(context);
                          } else if (index == 11) {
                            player.setAsset('assets/audio/snd_rope_arrow.WAV');
                            player.play();
                            return ItemCard.buildRopeArrowCard(context);
                          } else if (index == 12) {
                            player.setAsset('assets/audio/snd_sword.WAV');
                            player.play();
                            return ItemCard.buildSwordCard(context);
                          } else if (index == 13) {
                            player.setAsset('assets/audio/snd_blackjack.WAV');
                            player.play();
                            return ItemCard.buildBlackjackCard(context);
                          } else {
                            return Scaffold(
                              appBar: AppBar(),
                              body: Container(
                                child: Center(child: Text("Unknown item card",
                                style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: Colors.amber,
                                  fontSize: 20
                                ),)),
                                color: Colors.black,
                              ),
                            );
                          }
                      },
                    ),
                  );
                },
                child: Card(
                  margin: const EdgeInsets.all(12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(itemList[index].image),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0))),
                        ),
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 16.0, bottom: 12.0, left: 12.0, right: 12.0),
                          child: Text(itemList[index].name,
                            style: TextStyle(
                              fontFamily: 'Carleton',
                              fontSize: 14.0,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
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

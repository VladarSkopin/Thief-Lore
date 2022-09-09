import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LocationPages {
  static final String stonemarketDescription =
      "  \"This district's known for commerce and corruption, with plenty of both for everybody.\n  Most people come here for the stores, but I tend to do my shopping after everything's locked up for the night.\n  There's the Clocktower, one of the tallest buildings in the City, a good landmark day or night... And finally the Stonemarket Plaza. More vendors, more people.\"\n -- Garrett";
  static final String southQuarterDescription =
      "  South Quarter is a district set between Newmarket and the Docks.\n  It is a densely populated district, with mixed citizens.\n  It is considered neither a rich, nor a poor area, but the presence of Pavelock Prison marks it is a neighborhood with high City Watch activity.\n  South Quarter can be pointed as Garrett's home district.\n  He frequently takes residence here and hides after a job in this area.\n  Even Ramirez's sources describe Garrett as a South Quarter \'independent\' thief.";
  static final String auldaleDescription =
      "  The ritzy section of town, with most of the city's rich people.\n  The only way in is the gate on the west side from the Old Quarter.\n  Landmarks include the Plaza on the west side, the Pump House near to that, the Museum in the northeast corner, and the park on the east side, which has turned into a Pagan camp.\n  Also, the Auldale fence is located in the southern area, and Inspector Drept keeps his office near the pub in the southeast corner.";
  static final String oldQuarterDescription =
      "  The name Old Quarter, sometimes mentioned as Olde Quarter, speaks for itself, as it is one of the oldest parts of The City.\n  It was once the thriving center of The City and the place which is rumored to be the first area settled by its people.\n  Buildings are packed close together and the streets are narrow and cluttered.\n  This district was once home to the City's main Hammerite cathedral, and is still considered a Hammerite stronghold.";
  static final String docksDescription =
      "  The Docks are one of the City's districts.\n  They are crammed with small warehouses and a lot of seedy inhabitants.\n  The Pagans possess a small storehouse in this district which serves as their sanctuary.\n  The Docks are mentioned as early as Thief One, and were one of the City Warden's districts.\n  The Wayside Dock District appears in Thief 2, but it\'s not known if it has anything to do with the Docks district or not.";
  static final String paganDescription =
      "  As nature lovers who worship the Woodsie Lord deity, and who prefer to live simple lives in the deep forests outside The City, the Pagans shun technology, living in harmony with the natural world, as well as the superhuman creatures that are the minions of the Woodsie Lord.";
  static final String blackbrookDescription =
      "  Blackbrook is a city-state outside of The City.\n  Blackbrook is at war with The City over economic interests.\n  According to the dossier found in the basement of Ramirez Manor, this city is home to the Blackbrook Underguild, a crime syndicate dealing in \"magical constructs, medicinals, and elemental crystals\".";
  static final String sewersDescription =
      " The City Sewers are large tunnel-like structures.\n  They are inhabited mostly by rats, spiders, criminals, the homeless, craymen and zombies.\n  In the Docks district they lead down into the sunken ";
  static final String sewersDescription2 = "Kurshok";
  static final String sewersDescription3 = " citadel.";
  static final String kurshokDescription =
      "  The Kurshok are a civilization, species and faction of xenophobic amphibian humanoids who dwell mainly within their ancient ruins under the sewers and streets of The City.\n  The Kurshok\'s history is as old as the Pagans and the Precursors.";
  static final String shalebridgeDescription =
      "  Shalebridge Cradle is an abandoned and haunted building located in Old Quarter.\n  The story of The Cradle is known by many of The City, and even more avoid the abandoned gates.\n  The Shalebridge Cradle used to be an orphanage, and then an insane asylum, at the same time.\n  It is inhabited by the undead asylum inmates, and also, at times, the shadowy remains of the Cradle Staff.\n  Additionally, the building has its own memory, mind and will.";
  static final String museumDescription =
      "  Situated in the north of Auldale, it is one of the City's best museums for modern and ancient art.\n  Museum guards wear uniforms of chain-mail with a purple insignia and purple berets.\n  The building itself is very large and separated into three parts: the East Wing and West Wing of Porter Hall, and Tesero Hall.\n  Each is filled will exotic loot items either donated or sold to the museum by the nobility and the occasional unknown benefactor.";


  static Widget buildStonemarketPage(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('Stonemarket',
                  style: Theme.of(context).textTheme.headline4)),
          body: ListView(
            children: [
              SizedBox(height: 40),
              Image(
                  image: AssetImage(
                      'assets/location_pics/stonemarket.jpg')),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SelectableText(stonemarketDescription,
                    style: Theme.of(context).textTheme.bodyText1),
              ),
              SizedBox(height: 40),
            ]
              )),
    );
  }

  static Widget buildSouthQuarterPage(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('South Quarter',
                  style: Theme.of(context).textTheme.headline4)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/south_quarter.jpg')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(southQuarterDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
              )),
    );
  }

  static Widget buildAuldalePage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('Auldale',
                  style: Theme.of(context).textTheme.headline1)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/auldale.jpg')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(auldaleDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }

  static Widget buildOldQuarterPage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('Old Quarter',
                  style: Theme.of(context).textTheme.headline4)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/old_quarter.jpg')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(oldQuarterDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }

  static Widget buildDocksPage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('The Docks',
                  style: Theme.of(context).textTheme.headline1)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/docks.png')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(docksDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }

  static Widget buildPaganForestPage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('The Pagan Forest',
                  style: Theme.of(context).textTheme.headline4)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/pagan_forest.png')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(paganDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }

  static Widget buildBlackbrookPage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('Blackbrook',
                  style: Theme.of(context).textTheme.headline1)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/blackbrook.PNG')),
                            SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(blackbrookDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }

  static Widget buildSewersPage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('The Sewers',
                  style: Theme.of(context).textTheme.headline1)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/sewers.PNG')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText.rich(TextSpan(
                          children: [
                            TextSpan(
                              text: sewersDescription,
                              style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                              text: sewersDescription2,
                              style: TextStyle(
                                fontFamily: 'Redressed',
                                fontSize: 32.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context,
                                      PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 1000),
                                          child: buildKurshokCitadel(context)));
                                },
                            ),
                            TextSpan(
                                text: sewersDescription3,
                                style: Theme.of(context).textTheme.bodyText1),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }

  static Widget buildKurshokCitadel(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('The Kurshok Citadel',
            style: Theme.of(context).textTheme.headline5)),
        body: ListView(children: [
                SizedBox(height: 40),
                Image(
                    image: AssetImage(
                        'assets/location_pics/kurshok.jpg')),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SelectableText(kurshokDescription,
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                SizedBox(height: 40),
              ],
            ),
      ),
    );
  }

  static Widget buildShalebridgePage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('Shalebridge Cradle',
                  style: Theme.of(context).textTheme.headline5)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/shalebridge.jpg')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(shalebridgeDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }

  static Widget buildMuseumPage(context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              title: Text('Wieldstrom Museum',
                  style: Theme.of(context).textTheme.headline5)),
          body: ListView(children: [
                    SizedBox(height: 40),
                    Image(
                        image: AssetImage(
                            'assets/location_pics/museum.jpg')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(museumDescription,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                  ],
                )),
    );
  }
}

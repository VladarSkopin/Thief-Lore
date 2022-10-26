import 'package:flutter/material.dart';

class CharacterCard {

  static const String garrettDescription1 = "  Garrett is the protagonist of the Thief games - a cynical master thief who wishes nothing more than to be left alone to steal in peace, but who unwittingly becomes embroiled in a series of epic events.";
  static const String garrettDescription2 = "  Garrett exhibits a strong sense of survival and self-interest.\n  While on the surface Garrett is callous, cynical and sarcastic, with loyalty only to himself, he does seem to have deeper feelings for a few of his contacts:\n  Artemus, the Keeper that recruited and trained him; Basso the Boxman, a fellow thief; Cutty, his fence.";
  static const String garrettDescription3 = "  In extreme cases this seems to extend to even to past antagonists such as Viktoria, although that may be a result of Garrett\'s own self-interest.";
  static const String bassoDescription1 = "  Basso is first encountered in Thief: The Dark Project after being incarcerated by the Hammerites at Cragscleft Prison.\n  Garrett, visiting the prison on other business, decided to break him out of jail in order to score points with his sister.\n  Basso is unconscious, and has to be lugged out of the prison.";
  static const String bassoDescription2 = "  Basso reappears and first speaks in Thief II: The Metal Age, when he requests that Garrett rescue his fiancée, the chambermaid Jenivere, from her master's estate.";
  static const String artemusDescription = "  While walking through street one day, a young boy noticed Artemus.\n  He didn't seem to be seen by anyone else but appeared to have a bag of gold. \n  He made a grab for it but Artemus was too quick for him.\n  Noting his talent, Artemus left the boy with an option of staying on the streets or joining the Keepers.\n  After a thought, the boy, Garrett, caught up with Artemus and started his training.";
  static const String victoriaDescription1 = "  Viktoria is a wood nymph who can change her outer appearance at will.\n  Her true visage is of a humanoid shape with attractive facial features and green, bark-like skin. \nHer fingers can be extended into claws or vines and her blood is in the form of a viscous yellow-green sap.";
  static const String victoriaDescription2 = "  Although normally a fluent conversationalist, she may break off into the Pagan dialect in moments of rage.";
  static const String victoriaDescription3 = "  In Thief: The Dark Project she is allied with the Trickster against Garrett and the rest of The City.\n  Viktoria pretended to be human for a great deal of time in order to trick Garrett into retrieving the Eye for Constantine, who was actually the Trickster in disguise. \n  They required a human eye in order to use the artifact, so she tore out one of Garrett's eyes and left him for dead.";
  static const String victoriaDescription4 = "  After the death of the Trickster at the end of Thief: The Dark Project, the Metal Age began, producing a great threat to the entire Pagan faction.\n  She allies herself with Garrett and they unweave Karras' deadly plot to destroy all living things in and around the City.";
  static const String victoriaDescription5 = "  Garrett and Viktoria form an alliance as they work together against Karras.\n  At the end of Thief II: The Metal Age, Viktoria sacrifices herself in order to stop Karras.";
  static const String constantineDescription1 = "  Unlike the Builder, the Trickster was actually recorded in history (via the Keepers and Kurshok) to have walked the earth.";
  static const String constantineDescription2 = "  Although the exact connection between The Trickster and the Builder is unknown, Hammerites believe that the Builder came upon humans and offered them tools to work the land, while the Trickster continued preaching about the love for the pure earth to the pagans.\n  It is possible that these two gods have been fighting each other since the dawn of time.";
  static const String constantineDescription3 = "  The Trickster had a close relationship with the wood nymph Viktoria, they were \"old associates\" as she put it.\n  Viktoria acted as his personal messenger and was his main contact with The City officials.";
  static const String karrasDescription1 = "  Karras is a brilliant inventor, sociopath, genius, and prophet who split from the Hammerite organization to found his own faction, due to extremist beliefs, namely that all organic life was inherently flawed.";
  static const String karrasDescription2 = "  He also has a distaste towards the conservative, insular nature of the Hammerites and their slow technological progress.\n  Though Karras suffers from a speech impediment, he is very charismatic and commands a loyal army of Mechanist followers.";
  static const String karrasDescription3 = "  When Garrett lost his eye to the Trickster, Karras was the one who designed the Mechanical Eye given to Garrett.";
  static const String orlandDescription1 = "  Orland was a keeper elder that eventually becomes the leader of the Keepers.\n  His leadership quickly proves officious, bureaucratic, and secretive, and Garrett learns to dislike him.";
  static const String orlandDescription2 = "  He appears quite pedantic about the Keeper Order's rules and takes his position as First Keeper very seriously.\n  He can't be praised with huge support from the rest of the Keepers, as some even suspect him of following personal interests.";


  static Widget buildGarrettCard(context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Garrett',
        style: Theme.of(context).textTheme.headline1)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView(children: [
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/garrett.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(garrettDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/garrett_2.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(garrettDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/garrett_3.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(garrettDescription3, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                ],
          ),
        ),
      ),
    );
  }

  static Widget buildBassoCard(context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Basso',
            style: Theme.of(context).textTheme.headline1)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView(children: [
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/basso.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(bassoDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/basso_2.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(bassoDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                ],
             ),
        ),
      ),
    );
  }


  static Widget buildArtemusCard(context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Artemus',
            style: Theme.of(context).textTheme.headline1)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView(children: [
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/artemus.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(artemusDescription, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40)
                ],
             ),
        ),
      ),
    );
  }


  static Widget buildVictoriaCard(context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Victoria',
            style: Theme.of(context).textTheme.headline1)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView(children: [
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/victoria.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(victoriaDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/victoria_2.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(victoriaDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/victoria_4.png')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(victoriaDescription3, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/victoria_5.png')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(victoriaDescription4, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/victoria_3.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(victoriaDescription5, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                ],
             ),
        ),
      ),
    );
  }


  static Widget buildConstantineCard(context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Constantine',
            style: Theme.of(context).textTheme.headline4)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView(children: [
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/constantine.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(constantineDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/constantine_3.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(constantineDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/constantine_4.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(constantineDescription3, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                ],
              ),
        ),
      ),
    );
  }


  static Widget buildKarrasCard(context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Karras',
            style: Theme.of(context).textTheme.headline1)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView(children: [
                  SizedBox(height: 40),
                  AspectRatio(aspectRatio: 0.9,
                  child: Image(image: AssetImage('assets/characters_pics/karras.png'))),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(karrasDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/karras_2.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(karrasDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/karras_3.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(karrasDescription3, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/karras_4.jpg')),
                  SizedBox(height: 40),
                ],
              ),
        ),
      ),
    );
  }


  static Widget buildOrlandCard(context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Orland',
            style: Theme.of(context).textTheme.headline1)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView(children: [
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/orland.jpg')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(orlandDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/characters_pics/orland_2.jpg')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(orlandDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40)
                ],
              ),
        ),
      ),
    );
  }



}
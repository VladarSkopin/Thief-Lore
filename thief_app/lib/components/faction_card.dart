import 'package:flutter/material.dart';

class FactionCard {
  static const String hammeriteDescription1 = "  The Order of the Hammer is a technocratic religious group, also known as the Hammerites.\n  They seek to carry out the vision of the Master Builder, their architect god, (who cultivated the human civilization from savagery by giving them the ability to use technology) and are the burning force of progress in the Thief world.";
  static const String hammeriteDescription2 = "  They represent order and orthodox religion and zealously enforce the tenets of their faith.\n  Part of this means a ceaseless strife against criminals and other law-breakers, but particularly against their long-time enemies, the Trickster-worshipping Pagans, who promote chaos and distortion.\n  They speak in a pseudo-archaic version of Early Modern English.";
  static const String hammeriteDescription3 = "  The Hammerites are a most industrious group, acting as construction contractors, working factories, and providing other sorts of technology for the City. However, they seem to have restrictions to technological progress, and regard the inventions of the Mechanists as heretical.";
  static const String paganDescription1 = "  The pagans represent the human faction aligned with the forces of nature and chaos in the Thief world.\n  They are primitive humans and beasts who promote nature and chaos at the expense of technological and environmentally-destructive progress. ";
  static const String paganDescription2 = "  The shamans, warriors and humanoid beast members of the Pagan peoples pray to the Trickster, whom they most often call the Woodsie Lord, an ancient god of nature and chaos. ";
  static const String paganDescription3 = "  The Hierarchy of Pagan society like the Hammerites structure, sees the god the Trickster at the top, followed by special powerful entities such as Viktoria, subsequently followed by the elite caste of shamans such as Dyan, then lesser shaman and finally warriors and commoners.";
  static const String keeperDescription1 = "  The Keepers are a powerful organization of scribes and scholars that secretly influence the balance of power in the City.\n  Very few living today know of their existence.";
  static const String keeperDescription2 = "  After enduring the return of the Trickster, followed by the Metal Age, the Keepers prophesied a third Dark Age, one that would result in their destruction.\n  None at the time could have suspected that the enemy that would prove their undoing was the Keepers themselves.";
  static const String brotherhoodDescription1 = "  The Hand Brotherhood is a foreign sect of mages residing in a compound of tall towers.\n  They are practitioners of elemental magic, and oppose necromancy.\n  Their main sources of magic are the four elemental schools: Earth, Water, Fire, and Air.";
  static const String brotherhoodDescription2 = "  The origin of the Brotherhood is unknown, but they are said to come from somewhere to the east of the City.\n  They live isolated beyond the City in their towers and are quite distant to the city folk or other factions.";
  static const String mechanistDescription1 = "  After the Trickster died (and during the discourse of the Hammerite Order), a group of Hammerites began to show disdain for the teachings of the Order, believing that technological innovations should be put before other subjects.";
  static const String mechanistDescription2 = "   Karras was one such Hammerite priest who left the Order with about one hundred other Hammerites, including Cavador.\n  Karras led the rebellious Hammerites and created a new Order that would be known as the Mechanists.\n  Over time, Karras became insane and began to believe that only beings of a mechanical nature could serve the Builder. ";
  static const String mechanistDescription3 = "  The Mechanists, despite their unpopular views, introduced a wide variety of technology to the city, including improved lighting and power systems along with automatic security systems.\n  Their inventions and technologies are based on gears, steamwork, clockwork, and other similar devices, and are largely derivative of existing hammerite technology.";
  static const String mechanistDescription4 = "  The Mechanists like their Hammerite cousins have a similar rank structure.\n  Members are called 'Brother', but unlike the Hammerites, the Mechanists have females, which they appropriately call 'Sister'.\n  The Mechanists have priests, but unlike the Hammers, they also have priestesses.\n  Only few have the title of 'Father' besides Karras.";

  static Widget buildHammeriteCard(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('The Hammerite Order',
            style: Theme.of(context).textTheme.headline5)
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
                  AspectRatio(aspectRatio: 1.5,
                  child: Image(image: AssetImage('assets/factions_pics/hammerites.jpg'))),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(hammeriteDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/factions_pics/hammerites_2.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(hammeriteDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/factions_pics/hammerites_3.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(hammeriteDescription3, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40)
                ],
             ),
        ),
      ),
    );
  }


  static Widget buildPaganCard(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('The Pagans',
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
                  AspectRatio(aspectRatio: 1.6,
                  child: Image(image: AssetImage('assets/factions_pics/pagans.jpg'))),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(paganDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  Image(image: AssetImage('assets/factions_pics/pagans_2.jpg')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(paganDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/factions_pics/pagans_3.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(paganDescription3, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/factions_pics/pagans_4.jpg')),
                  SizedBox(height: 40)
                ],
              ),
        ),
      ),
    );
  }


  static Widget buildKeeperCard(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('The Keepers',
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
                  AspectRatio(aspectRatio: 1/1,
                  child: Image(image: AssetImage('assets/factions_pics/keepers.jpg'))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(keeperDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  Image(image: AssetImage('assets/factions_pics/keepers_2.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(keeperDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  Image(image: AssetImage('assets/factions_pics/keepers_3.jpg')),
                  SizedBox(height: 40),
                ],
              ),
        ),
      ),
    );
  }


  static Widget buildBrotherhoodCard(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('The Hand Brotherhood',
            style: Theme.of(context).textTheme.headline5)
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
                  Image(image: AssetImage('assets/factions_pics/hand_brotherhood.jpg')),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(brotherhoodDescription1, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                  AspectRatio(aspectRatio: 1/1,
                  child: Image(image: AssetImage('assets/factions_pics/hand_brotherhood_2.jpg'))),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SelectableText(brotherhoodDescription2, style: Theme.of(context).textTheme.bodyText1),
                  ),
                  SizedBox(height: 40),
                ],
              ),
        ),
      ),
    );
  }


  static Widget buildMechanistCard(context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('The Mechanist Order',
            style: Theme.of(context).textTheme.headline5)
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            // Swiping in right direction.
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    AspectRatio(aspectRatio: 1.3,
                    child: Image(image: AssetImage('assets/factions_pics/mechanists.jpg'))),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(mechanistDescription1, style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                    Image(image: AssetImage('assets/factions_pics/mechanists_3.png')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(mechanistDescription2, style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                    Image(image: AssetImage('assets/factions_pics/mechanists_4.jpg')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(mechanistDescription3, style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                    Image(image: AssetImage('assets/factions_pics/mechanists_2.png')),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SelectableText(mechanistDescription4, style: Theme.of(context).textTheme.bodyText1),
                    ),
                    SizedBox(height: 40),
                    Image(image: AssetImage('assets/factions_pics/mechanists_6.jpg')),
                    SizedBox(height: 40),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }


}
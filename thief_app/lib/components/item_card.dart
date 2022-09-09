import 'package:flutter/material.dart';

class ItemCard {
  static const String healthPotionDescription =
      "This potion restores lost health";
  static const String invisibilityPotionDescription =
      "This potion makes you invisible! But it only lasts a few seconds, and does not make one inaudible";
  static const String slowFallPotionDescription =
      "This potion arrests some of your downward velocity when taken, and reduces the effect of gravity";
  static const String scoutingOrbDescription =
      "Connects to Garrett's mechanical eye using aetheric vibrations when dropped or thrown, allowing him to see from its location";
  static const String flashBombDescription =
      "This grenade will produce a bright flash of light, blinding enemies (or the unwary thief) who are looking at it";
  static const String flashMineDescription =
      "If a mine is triggered it reproduces the same flash of bright light as the flash bombs";
  static const String noiseArrowDescription =
      "The mechanism in this arrow produces a strange noise upon impact, useful as a distraction";
  static const String waterArrowDescription =
      "The water arrow does not do any damage, but it douses torches and other burning objects, and cleans up the stains";
  static const String fireArrowDescription =
      "This arrow will explode on impact, damaging its target and setting burnables such as torches on fire";
  static const String mossArrowDescription =
      "This arrow sends out a cloud of moss upon impact, which settles into a soft and silent carpet";
  static const String gasArrowDescription =
      "This arrow explodes on impact into a cloud of knockout gas, putting most living creatures inside its area to sleep";
  static const String ropeArrowDescription =
      "This arrow will stick into wooden surfaces and deploy a hanging rope";
  static const String swordDescription =
      "In addition to putting holes in the enemy, a sword can block a foe's attack";
  static const String blackjackDescription =
      "This weapon will knock out an unsuspecting target with little noise and no blood";



  static Widget buildHealthPotionCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/items_pics/health_potion.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(healthPotionDescription,
                          style: Theme.of(context).textTheme.bodyText2))
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildInvisibilityPotionCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/items_pics/ivisibility_potion.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(invisibilityPotionDescription,
                          style: Theme.of(context).textTheme.bodyText2))
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildSlowFallPotionCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/items_pics/slow_fall_potion.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(slowFallPotionDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildScoutingOrbCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/scouting_orb.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(scoutingOrbDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildFlashBombCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/flashbomb.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(flashBombDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildFlashMineCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/flash_mine.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(flashMineDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildNoiseArrowCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/noise_arrow.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(noiseArrowDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildWaterArrowCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/water_arrow.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(waterArrowDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildFireArrowCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/fire_arrow.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(fireArrowDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildMossArrowCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/moss_arrow.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(mossArrowDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildGasArrowCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/gas_arrow.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(gasArrowDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildRopeArrowCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/rope_arrow.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(ropeArrowDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildSwordCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/sword.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(swordDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  static Widget buildBlackjackCard(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Items", style: Theme.of(context).textTheme.headline1)),
        body: Center(
            child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Card(
            elevation: 4.0,
            shadowColor: Colors.deepOrangeAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  SizedBox(width: 8),
                  Container(
                    constraints: const BoxConstraints.expand(
                      width: 120,
                      height: 120,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/items_pics/blackjack.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Text(blackjackDescription,
                          style: Theme.of(context).textTheme.bodyText2)),
                  SizedBox(width: 16),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}

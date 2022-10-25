
class Faction {

  String image;
  String title;

  Faction({
    required this.image,
    required this.title,
});

  static List<Faction> factions = [
    Faction(
      title: 'The Hammerite Order',
      image: 'assets/factions_pics/hammerites.jpg',
    ),
    Faction(
        title: 'The Pagans',
        image: 'assets/factions_pics/pagans.jpg',
    ),
    Faction(
        title: 'The Keepers',
        image: 'assets/factions_pics/keepers.jpg',
    ),
    Faction(
      title: 'The Hand Brotherhood',
      image: 'assets/factions_pics/hand_brotherhood.jpg',
    ),
    Faction(
        title: 'The Mechanist Order',
        image: 'assets/factions_pics/mechanists.jpg',
    ),
  ];

}
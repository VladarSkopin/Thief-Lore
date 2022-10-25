class Items {
  String image;
  String name;

  Items({required this.image, required this.name});

  static List<Items> gameItems = [
    Items(image: 'assets/items_pics/health_potion.jpg', name: 'Health potion\n'),
    Items(image: 'assets/items_pics/ivisibility_potion.png', name: 'Invisibility potion'),
    Items(image: 'assets/items_pics/slow_fall_potion.png', name: 'Slow-fall potion'),
    Items(image: 'assets/items_pics/scouting_orb.jpg', name: 'Scouting orb'),
    Items(image: 'assets/items_pics/flashbomb.jpg', name: 'Flash bomb'),
    Items(image: 'assets/items_pics/flash_mine.jpg', name: 'Flash mine'),
    Items(image: 'assets/items_pics/noise_arrow.jpg', name: 'Noisemaker arrow'),
    Items(image: 'assets/items_pics/water_arrow.png', name: 'Water arrow\n'),
    Items(image: 'assets/items_pics/fire_arrow.png', name: 'Fire arrow'),
    Items(image: 'assets/items_pics/moss_arrow.png', name: 'Moss arrow'),
    Items(image: 'assets/items_pics/gas_arrow.png', name: 'Gas arrow'),
    Items(image: 'assets/items_pics/rope_arrow.jpg', name: 'Rope arrow'),
    Items(image: 'assets/items_pics/sword.jpg', name: 'Sword'),
    Items(image: 'assets/items_pics/blackjack.jpg', name: 'Blackjack'),
  ];
}


class Soundtracks {
  String title;
  String path;
  String imagePath;
  
  Soundtracks({
    required this.title,
    required this.path,
    required this.imagePath
});
  
  static List<Soundtracks> soundtracksThief = [
    Soundtracks(
        title: 'South Quarter',
        path: 'south_quarter.mp3',
        imagePath: 'assets/location_pics/south_quarter.jpg'
    ),
    Soundtracks(
      title: 'The Keeper Library',
      path: 'the_keeper_library.mp3',
      imagePath: 'assets/factions_pics/keepers_2.jpg'
    ),
    Soundtracks(
      title: 'The Docks',
      path: 'the_docks.mp3',
      imagePath: 'assets/location_pics/docks.png'
    ),
    Soundtracks(
      title: 'Shalebridge Cradle',
      path: 'shalebridge_cradle.mp3',
      imagePath: 'assets/location_pics/shalebridge.jpg'
    ),
    Soundtracks(
      title: 'Wieldstrom Museum',
      path: 'wieldstrom_museum.mp3',
      imagePath: 'assets/location_pics/museum.jpg'
    ),
    Soundtracks(
      title: 'Shipping and Receiving',
      path: 'shipping_and_receiving.mp3',
      imagePath: 'assets/location_pics/shipping.PNG'
    ),
    Soundtracks(
      title: 'Trail Of Blood',
      path: 'trail_of_blood.mp3',
      imagePath: 'assets/location_pics/pagan_forest.png'
    ),
    Soundtracks(
      title: 'Sabotage At Soulforge',
      path: 'sabotage_at_soulforge.mp3',
      imagePath: 'assets/location_pics/soulforge.PNG'
    ),
    Soundtracks(
      title: 'I just Saved the World',
      path: 'i_just_saved_the_world.mp3',
      imagePath: 'assets/location_pics/ending.PNG'
    ),
  ];
  
}
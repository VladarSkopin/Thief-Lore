
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
        title: 'Rutherford Castle',
        path: 'rutherford_castle.mp3',
        imagePath: 'assets/location_pics/rutherford.PNG'
    ),
    Soundtracks(
        title: 'South Quarter',
        path: 'south_quarter.mp3',
        imagePath: 'assets/location_pics/south_quarter.jpg'
    ),
    Soundtracks(
      title: 'Stonemarket',
      path: 'stonemarket.mp3',
      imagePath: 'assets/location_pics/stonemarket.jpg'
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
      title: 'Old Quarter',
      path: 'old_quarter.mp3',
      imagePath: 'assets/location_pics/old_quarter.jpg'
    ),
    Soundtracks(
      title: 'Auldale',
      path: 'auldale.mp3',
      imagePath: 'assets/location_pics/auldale.jpg'
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
      title: 'Interference',
      path: 'intervention.mp3',
      imagePath: 'assets/location_pics/interference.PNG'
    ),
    Soundtracks(
      title: 'Shipping and Receiving',
      path: 'shipping_and_receiving.mp3',
      imagePath: 'assets/location_pics/shipping.PNG'
    ),
    Soundtracks(
      title: 'Framed',
      path: 'framed.mp3',
      imagePath: 'assets/location_pics/framed.PNG'
    ),
    Soundtracks(
      title: 'The Pagans',
      path: 'the_pagans.mp3',
      imagePath: 'assets/factions_pics/pagans_2.jpg'
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
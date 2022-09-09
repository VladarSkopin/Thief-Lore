class Character {
  String name;
  String image;
  String description;

  Character(
      {required this.name, required this.image, required this.description});

  static List<Character> characters = [
    Character(
        name: 'Garrett',
        image: 'assets/characters_pics/garrett.jpg',
        description: 'The one and only master thief'),
    Character(
        name: 'Basso',
        image: 'assets/characters_pics/basso.jpg',
        description: 'Thief, lock-picking specialist'),
    Character(
        name: 'Artemus',
        image: 'assets/characters_pics/artemus.jpg',
        description: 'Keeper, mentor'),
    Character(
        name: 'Victoria',
        image: 'assets/characters_pics/victoria.jpg',
        description: 'Powerful wood nymph'),
    Character(
        name: 'Constantine',
        image: 'assets/characters_pics/constantine.jpg',
        description: 'The pagan god in disguise'),
    Character(
        name: 'Karras',
        image: 'assets/characters_pics/karras.png',
        description: 'The head of the Mechanist Order'),
    Character(
        name: 'Orland',
        image: 'assets/characters_pics/orland.jpg',
        description: 'The leader of the Keepers'),
  ];
}

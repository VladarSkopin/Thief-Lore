
import 'character.dart';

class Buttons {
  String label;
  List<Character> characters = Character.characters;

  Buttons(
      this.label,
      );

  static List<Buttons> buttons = [
    Buttons(
      'Characters'
    ),
    Buttons(
        'Factions'
    ),
    Buttons(
        'Items'
    ),
    Buttons(
        'Soundtracks'
    ),
    Buttons(
        'Locations'
    ),
    Buttons(
        'Quiz'
    ),
    Buttons(
      'About'
    )
  ];



}


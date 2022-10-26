
import 'package:thief_app/model/option.dart';

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({required this.text, required this.options, this.isLocked = false, this.selectedOption});

  static final questionsCharacters = [
    Question(
        text: 'Who adopted Garrett when he was a kid?',
        options: [
          Option(code: 'A', text: 'Basso', isCorrect: false),
          Option(code: 'B', text: 'Artemus', isCorrect: true),
          Option(code: 'C', text: 'Orland', isCorrect: false),
          Option(code: 'D', text: 'Constantine', isCorrect: false),
        ]
    ),
    Question(
        text: 'Orland is the head of:',
        options: [
          Option(code: 'A', text: 'The Keepers', isCorrect: true),
          Option(code: 'B', text: 'The Hand Brotherhood', isCorrect: false),
          Option(code: 'C', text: 'The Hammerite Order', isCorrect: false),
          Option(code: 'D', text: 'Thieves Guild', isCorrect: false),
        ]
    ),
    Question(
        text: 'Who was the leader of the pagans after the Trickster\'s death?',
        options: [
          Option(code: 'A', text: 'Constantine', isCorrect: false),
          Option(code: 'B', text: 'Garrett', isCorrect: false),
          Option(code: 'C', text: 'Victoria', isCorrect: true),
          Option(code: 'D', text: 'Basso', isCorrect: false),
        ]
    ),
    Question(
        text: 'In Thief the Dark Project, Garrett helped his friend to escape prison:',
        options: [
          Option(code: 'A', text: 'Artemus', isCorrect: false),
          Option(code: 'B', text: 'Basso', isCorrect: true),
          Option(code: 'C', text: 'Orland', isCorrect: false),
          Option(code: 'D', text: 'Larksper', isCorrect: false),
        ]
    ),
    Question(
        text: 'Garrett received a new mechanical eye from:',
        options: [
          Option(code: 'A', text: 'An unknown fence', isCorrect: false),
          Option(code: 'B', text: 'Basso', isCorrect: false),
          Option(code: 'C', text: 'Karras', isCorrect: true),
          Option(code: 'D', text: 'Victoria', isCorrect: false),
        ]
    ),
  ];


  static final questionsFactions = [
    Question(
        text: 'Which organization was responsible for bringing about the Metal Age?',
        options: [
          Option(code: 'A', text: 'The Keepers', isCorrect: false),
          Option(code: 'B', text: 'The Pagans', isCorrect: false),
          Option(code: 'C', text: 'The Hammerite Order', isCorrect: false),
          Option(code: 'D', text: 'The Mechanist Order', isCorrect: true),
        ]
    ),
    Question(
        text: 'Who was the head of the Mechanist Order?',
        options: [
          Option(code: 'A', text: 'Yorik', isCorrect: false),
          Option(code: 'B', text: 'Karras', isCorrect: true),
          Option(code: 'C', text: 'Artemus', isCorrect: false),
          Option(code: 'D', text: 'Orland', isCorrect: false),
        ]
    ),
    Question(
        text: 'The power of the Glyphs is wielded by:',
        options: [
          Option(code: 'A', text: 'The Keepers', isCorrect: true),
          Option(code: 'B', text: 'The Pagans', isCorrect: false),
          Option(code: 'C', text: 'Thieves Guild', isCorrect: false),
          Option(code: 'D', text: 'The City Watch', isCorrect: false),
        ]
    ),
    Question(
        text: 'In Thief Gold, the Talisman of Earth was stolen from:',
        options: [
          Option(code: 'A', text: 'The Keepers', isCorrect: false),
          Option(code: 'B', text: 'The Pagans', isCorrect: false),
          Option(code: 'C', text: 'The Mechanists', isCorrect: false),
          Option(code: 'D', text: 'The Hand Brotherhood', isCorrect: true),
        ]
    ),
    Question(
        text: 'In Thief the Dark Project, Garrett was invited to an organization, but he rejected it:',
        options: [
          Option(code: 'A', text: 'First City Bank and Trust', isCorrect: false),
          Option(code: 'B', text: 'The Mechanist Order', isCorrect: false),
          Option(code: 'C', text: 'Thieves Guild', isCorrect: true),
          Option(code: 'D', text: 'The Hand Brotherhood', isCorrect: false),
        ]
    ),
  ];


  static final questionsItems = [
    Question(
        text: 'Which item is the most expensive one in Thief the Metal Age?',
        options: [
          Option(code: 'A', text: 'Water arrow', isCorrect: false),
          Option(code: 'B', text: 'Health potion', isCorrect: false),
          Option(code: 'C', text: 'Gas arrow', isCorrect: true),
          Option(code: 'D', text: 'Flash bomb', isCorrect: false),
        ]
    ),
    Question(
        text: 'In Thief 1 and Thief 2, when you want to knock someone down instantly, you use:',
        options: [
          Option(code: 'A', text: 'Sword', isCorrect: false),
          Option(code: 'B', text: 'Flash bomb', isCorrect: true),
          Option(code: 'C', text: 'Rope arrow', isCorrect: false),
          Option(code: 'D', text: 'Moss arrow', isCorrect: false),
        ]
    ),
    Question(
        text: 'If you have no other choice but to kill, the least noisy option would be to use:',
        options: [
          Option(code: 'A', text: 'Fire arrow', isCorrect: false),
          Option(code: 'B', text: 'Broadhead arrow', isCorrect: true),
          Option(code: 'C', text: 'Mine', isCorrect: false),
          Option(code: 'D', text: 'Scouting orb', isCorrect: false),
        ]
    ),
    Question(
        text: 'In Thief world, if you want to climb a high place, you:',
        options: [
          Option(code: 'A', text: 'Buy a portable ladder', isCorrect: false),
          Option(code: 'B', text: 'Use a stack of items', isCorrect: true),
          Option(code: 'C', text: 'Jump twice in the air', isCorrect: false),
          Option(code: 'D', text: 'Use the Jumping Glyph', isCorrect: false),
        ]
    ),
    Question(
        text: 'Which item is the cheapest in Thief Deadly Shadows?',
        options: [
          Option(code: 'A', text: 'Fire arrow', isCorrect: false),
          Option(code: 'B', text: 'Health potion', isCorrect: false),
          Option(code: 'C', text: 'Climbing gloves', isCorrect: false),
          Option(code: 'D', text: 'Water arrow', isCorrect: true),
        ]
    ),
  ];


  static final questionsLocations = [
    Question(
        text: 'Which district is usually associated with Garrett\'s home?',
        options: [
          Option(code: 'A', text: 'Old Quarter', isCorrect: false),
          Option(code: 'B', text: 'South Quarter', isCorrect: true),
          Option(code: 'C', text: 'Auldale', isCorrect: false),
          Option(code: 'D', text: 'Newport', isCorrect: false),
        ]
    ),
    Question(
        text: 'Angelwatch is located in:',
        options: [
          Option(code: 'A', text: 'Auldale', isCorrect: false),
          Option(code: 'B', text: 'Shalebridge', isCorrect: false),
          Option(code: 'C', text: 'Stonemarket', isCorrect: false),
          Option(code: 'D', text: 'Dayport', isCorrect: true),
        ]
    ),
    Question(
        text: 'If you are planning on infiltrating a rich mansion, most probably you will be heading to:',
        options: [
          Option(code: 'A', text: 'South Quarter', isCorrect: false),
          Option(code: 'B', text: 'The Docks', isCorrect: false),
          Option(code: 'C', text: 'Shalebridge', isCorrect: false),
          Option(code: 'D', text: 'Auldale', isCorrect: true),
        ]
    ),
    Question(
        text: 'The Eye was originally taken from',
        options: [
          Option(code: 'A', text: 'The Hammerite Cathedral', isCorrect: true),
          Option(code: 'B', text: 'The Soulforge', isCorrect: false),
          Option(code: 'C', text: 'Rutherford Castle', isCorrect: false),
          Option(code: 'D', text: 'Kurshok Citadel', isCorrect: false),
        ]
    ),
    Question(
        text: 'To get into the Hammerite Cathedral, Garrett had to steal the Talisman of Fire. It was located in:',
        options: [
          Option(code: 'A', text: 'The Lost City', isCorrect: true),
          Option(code: 'B', text: 'The Pagan Forest', isCorrect: false),
          Option(code: 'C', text: 'The Sewers', isCorrect: true),
          Option(code: 'D', text: 'Kurshok Citadel', isCorrect: false),
        ]
    ),
  ];


}
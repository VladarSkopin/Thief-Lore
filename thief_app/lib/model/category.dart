import 'package:flutter/material.dart';
import 'package:thief_app/model/question.dart';

class Category {
  final String categoryName;
  final Color backgroundColor;
  final String imgUrl;
  final List<Question> questions;

  Category({
    required this.categoryName, required this.backgroundColor, required this.imgUrl, required this.questions
  });

  static List<Category> categories = [
    Category(
      categoryName: 'Characters',
      backgroundColor: Colors.amber,
      imgUrl: 'assets/quiz_pics/characters.png',
      questions: Question.questionsCharacters
    ),
    Category(
        categoryName: 'Factions',
        backgroundColor: Colors.amber,
        imgUrl: 'assets/quiz_pics/factions.png',
        questions: Question.questionsFactions
    ),
    Category(
        categoryName: 'Items',
        backgroundColor: Colors.amber,
        imgUrl: 'assets/quiz_pics/items.png',
        questions: Question.questionsItems
    ),
    Category(
        categoryName: 'Locations',
        backgroundColor: Colors.amber,
        imgUrl: 'assets/quiz_pics/locations.png',
        questions: Question.questionsLocations
    ),
  ];
}
import 'package:flutter/material.dart';
import 'package:thief_app/model/question.dart';

class Category {
  final String categoryName;
  final String imgUrl;
  final List<Question> questions;

  Category({
    required this.categoryName, required this.imgUrl, required this.questions
  });

  static List<Category> categories = [
    Category(
      categoryName: 'Characters',
      imgUrl: 'assets/quiz_pics/characters.png',
      questions: Question.questionsCharacters
    ),
    Category(
        categoryName: 'Factions',
        imgUrl: 'assets/quiz_pics/factions.png',
        questions: Question.questionsFactions
    ),
    Category(
        categoryName: 'Items',
        imgUrl: 'assets/quiz_pics/items.png',
        questions: Question.questionsItems
    ),
    Category(
        categoryName: 'Locations',
        imgUrl: 'assets/quiz_pics/locations.png',
        questions: Question.questionsLocations
    ),
  ];
}
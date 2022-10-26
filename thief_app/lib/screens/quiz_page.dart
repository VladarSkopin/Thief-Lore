
import 'package:flutter/material.dart';
import '../model/category.dart';
import '../widgets/category_card.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz Sections', style: Theme.of(context).textTheme.headline4)),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2D494B),
              Color(0xFF20494B),
              Color(0xFF1F3A3A),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //childAspectRatio: 4 / 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 32
            ),
            children: Category.categories
            .map((category) => CategoryCard(category: category))
            .toList(),
          ),
        ),
      ),
    );
  }
}

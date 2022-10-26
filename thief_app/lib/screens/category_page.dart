
import 'package:flutter/material.dart';
import '../model/category.dart';
import '../model/option.dart';
import '../model/question.dart';
import '../widgets/questions_widget.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({
    Key? key,
    required this.category
  }) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late PageController controller;
  late Question question;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    question = widget.category.questions.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2B48),
      body: QuestionsWidget(
        category: widget.category,
        controller: controller,
        onChangedPage: (index) => nextQuestion(index: index),
        onClickedOption: selectOption,
      ),
    );
  }

  void selectOption(Option option) {
    if (question.isLocked) {
      return;
    } else {
      setState(() {
        question.isLocked = true;
        question.selectedOption = option;
      });
    }
  }

  void nextQuestion({required int index}) {
    //final nextPage = controller.page! + 1;
    //final indexPage = index.toInt() ?? nextPage.toInt();
    final nextPage = index + 1;
    final indexPage = index ?? nextPage;

    setState(() {
      question = widget.category.questions[indexPage];
    });
  }
}

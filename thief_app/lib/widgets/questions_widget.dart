
import 'package:flutter/material.dart';
import 'package:thief_app/model/category.dart';
import 'package:thief_app/model/question.dart';
import '../model/option.dart';
import 'options_widget.dart';

class QuestionsWidget extends StatelessWidget {
  final Category category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key? key,
    required this.category,
    required this.controller,
    required this.onChangedPage,
    required this.onClickedOption
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: onChangedPage,
        itemCount: category.questions.length,
        itemBuilder: (context, index) {
        final question = category.questions[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  question.text,
                  style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 24),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: OptionsWidget(
                      question: question,
                      onClickedOption: onClickedOption
                  ),
                )
              ],
            ),
          );
        });
  }

}

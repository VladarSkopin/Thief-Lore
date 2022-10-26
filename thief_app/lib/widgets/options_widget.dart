
import 'package:flutter/material.dart';
import '../model/option.dart';
import '../model/question.dart';

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: question.options
      .map((option) => buildOption(context, option))
      .toList(),
    );
  }

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () => onClickedOption(option),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)
          ),
          child: SizedBox(
            height: 50,
            child: Row(
              children: [
                SizedBox(width: 8),
                Text(option.code, style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Color(0xFF502558))),
                SizedBox(width: 12),
                Text(option.text, style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Color(0xFF41265A), fontSize: 17))
              ],
            ),
          ),
        )
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (!isSelected) {
      return Colors.grey.shade200;
    } else {
      return option.isCorrect ? Colors.green : Colors.red;
    }
  }
}

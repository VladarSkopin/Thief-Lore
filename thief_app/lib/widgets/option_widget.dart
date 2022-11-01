
import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final String optionText;
  final Color optionColor;
  final VoidCallback optionTap;

  const OptionWidget({
    Key? key,
    required this.optionText,
    required this.optionColor,
    required this.optionTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: optionTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: optionColor,
          //border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(optionText, style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Color(0xFF41265A), fontSize: 17)),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey.shade600)
              ),
            )
          ],
        ),
      ),
    );
  }
}

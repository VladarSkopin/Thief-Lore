
import 'package:flutter/material.dart';
import '../model/category.dart';
import '../widgets/option_widget.dart';

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
  int _questionIndex = 0;
  int _totalScore = 0;
  bool optionIsSelected = false;
  bool endOfQuiz = false;
  String _finishContent = 'You\'ve obtained a stack of coins';
  String _finishImgUrl = 'assets/quiz_pics/coin.PNG';

  void _questionAnswered(bool isOptionCorrect) {
    setState(() {
      // option was selected
      optionIsSelected = true;
      // check if the answer is correct
      if (isOptionCorrect) {
        _totalScore++;
      }
      // when the quiz ends
      if (_questionIndex + 1 == widget.category.questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      optionIsSelected = false;
      if (_questionIndex + 1 == widget.category.questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _finishQuiz() async {
    //await UsersDatabase.instance.deleteAllUsers();

    setState(() {
      switch(_totalScore) {
        case 1 :
          _finishContent = 'You\'ve obtained a goblet';
          _finishImgUrl = 'assets/quiz_pics/goblet.PNG';
          break;
        case 2 :
          _finishContent = 'You\'ve obtained golden dice';
          _finishImgUrl = 'assets/quiz_pics/golden_dice.PNG';
          break;
        case 3 :
          _finishContent = 'You\'ve obtained rare spice';
          _finishImgUrl = 'assets/quiz_pics/rare_spice.PNG';
          break;
        case 4 :
          _finishContent = 'You\'ve obtained a gem ring';
          _finishImgUrl = 'assets/quiz_pics/gem_ring.PNG';
          break;
        case 5 :
          _finishContent = 'You\'ve obtained a precursor mask';
          _finishImgUrl = 'assets/quiz_pics/precursor_mask.PNG';
          break;
        default:
          _finishContent = 'You\'ve obtained a coin';
          _finishImgUrl = 'assets/quiz_pics/coin.PNG';
          break;
      }
    });

    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.black,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('You got $_totalScore out of ${widget.category.questions.length} correct',
                  style: TextStyle(
                      color: Colors.white, fontSize: 22), textAlign: TextAlign.center),
              SizedBox(height: 20),
              Image.asset(_finishImgUrl, scale: 3),
              Text('\n$_finishContent',
                  style: TextStyle(
                      color: Colors.white, fontSize: 22), textAlign: TextAlign.center)
            ],
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK',
                  style: TextStyle(
                      color: Colors.white, fontSize: 24)),
            ),
          ],
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.category.categoryName} test', style: Theme.of(context).textTheme.headline4?.copyWith(fontSize: 18))),
      backgroundColor: Color(0xFF1E2B48),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 6),
              Text.rich(
                  TextSpan(
                    text: 'Your score: ${_totalScore} ',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 22),
                    children: [
                      TextSpan(
                          text: '/ ${widget.category.questions.length}',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18),
                      )
                    ]
                  ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Text(
                    widget.category.questions[_questionIndex]['question'].toString(),
                    style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 24)
                ),
              ),
              ...(widget.category.questions[_questionIndex]['options'] as List<Map<String, Object>>)
              .map((option) => OptionWidget(
                optionText: option['optionText'].toString(),
                optionColor: optionIsSelected ? option['isOptionCorrect'] as bool ? Colors.green.shade300 : Colors.red.shade800 : Colors.grey.shade200,
                optionTap: () {
                  if (optionIsSelected) {
                    return;
                  }
                  _questionAnswered(option['isOptionCorrect'] as bool);
                },
              )),
              SizedBox(height: 10),
              MaterialButton(
                  onPressed: optionIsSelected ? endOfQuiz ? _finishQuiz : _nextQuestion : null,
                  color: Colors.deepPurple,
                  disabledColor: Colors.blueGrey,
                  elevation: 6.0,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(endOfQuiz ? 'FINISH' : 'NEXT', style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white, fontSize: 20))),

            ],
          ),
        ),
      ),
    );
  }


}

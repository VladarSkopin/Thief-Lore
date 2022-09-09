import 'package:flutter/material.dart';
import 'circle_image.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final String authorDescription;
  final ImageProvider? imageProvider;

  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      required this.authorDescription,
      required this.imageProvider,
      })
      : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavored = false;
  int _size = 80;

  // SOMETHING IS WRONG WITH THIS! -> ERRORS IN THE OUTPUT!
  /*
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 2),
    vsync: this
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
   */

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != '/') {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                final snackBar = SnackBar(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(width: 3, color: Colors.black54)
                    ),
                    content: const Text(
                        'Ouch! Don\'t touch my face please, I still have some skin burns...',
                        style: TextStyle(
                            fontFamily: 'JD',
                            color: Colors.white,
                            fontSize: 30
                        ))
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.pop(context);
              } else {
                setState(() {
                  _size = _size == 140 ? 80 : 140;
                });
              }
            },
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: CircleImage(
                imageProvider: widget.imageProvider,
                imageRadius: _size.toDouble(),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(widget.authorName,
              style: TextStyle(
                fontFamily: 'Charlesworth',
                fontSize: 20.0,
                color: Colors.amber[300],
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          Text(widget.title, style:  const TextStyle(
            fontFamily: 'Carleton',
            fontSize: 24.0,
            color: Colors.limeAccent
          )),
          const SizedBox(height: 40),
          Text(widget.authorDescription,
              style: const TextStyle(
                fontFamily: 'Papyrus',
                fontSize: 24.0,
                color: Colors.amber
              )),
          const SizedBox(height: 14),
          IconButton(
            color: Colors.red,
            onPressed: () {
              setState(() {
                _isFavored = !_isFavored;
              });
              if (_isFavored) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                final snackBar = SnackBar(
                    backgroundColor: Colors.indigo,
                    duration: const Duration(milliseconds: 2000),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(width: 3, color: Colors.black54)
                    ),
                    content: const Text(
                      'I like you too, thanks',
                      style: TextStyle(
                          fontFamily: 'JD',
                          color: Colors.white,
                          fontSize: 30
                      ))
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            //icon: Icon(_isFavored ? Icons.favorite : Icons.favorite_border),


            icon: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (child, anim) => RotationTransition(
                  turns: child.key == ValueKey('icon1')
                      ? Tween<double>(begin: 1, end: 1).animate(anim)
                      : Tween<double>(begin: 1, end: 1).animate(anim),
                  child: ScaleTransition(
                    scale: anim,
                    child: child,
                  ),
                ),
                child: (_isFavored) ? Icon(Icons.favorite, key: ValueKey('icon1'))
                    : Icon(Icons.favorite_border, key: ValueKey('icon2'))
            ),


            iconSize: 30,

          )
        ],
      ),
    );
  }
}

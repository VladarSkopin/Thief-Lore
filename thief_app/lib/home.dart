import 'package:flutter/material.dart';
import 'screens/components.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  static List<Widget> pages = [
    PageFirst(),
    PageSecond(),
    PageThird(),
    PageFourth()
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child:
                Text(widget.title, style: Theme.of(context).textTheme.headline1),
          ),
        ),
        //body: pages[_selectedIndex],
        //IndexedStask -> preserves the state of all the children !!!
        body: IndexedStack(index: _selectedIndex, children: pages),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
          selectedIconTheme: IconThemeData(
            size: 30
          ),
          unselectedIconTheme: IconThemeData(
            size: 15
          ),
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_rounded),
                label: 'Menu',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.image),
                label: 'Locations',
                backgroundColor: Colors.teal[100]
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.title),
                label: 'Quiz',
                backgroundColor: Colors.amber[200]
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.announcement_outlined),
                label: 'About',
                backgroundColor: Colors.blue[100]
            ),
          ],
        ),
      ),
    );
  }


}

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'location_icon_circle_image.dart';
import '../screens/location_pages.dart';

class LocationCard {
  static Widget buildLocationCardCityMap(BuildContext context) {
    return Center(
      child: Container(
          constraints: BoxConstraints.expand(
            width: 450,
            height: 450,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/location_pics/thief_map_2.png'),
                  fit: BoxFit.contain),
              borderRadius: const BorderRadius.all(Radius.circular(10.0))),
          child: Stack(
            children: [
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 800),
                    child: LocationPages.buildStonemarketPage(context)
                    ));
                  },
                  child: LocationIconCircleImage(
                    imageProvider:
                        AssetImage('assets/location_pics/icon_1.png'),
                    imageRadius: 15,
                  ),
                ),
                top: 70,
                left: 200,
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 800),
                    child: LocationPages.buildSouthQuarterPage(context)
                    ));
                  },
                  child: LocationIconCircleImage(
                    imageProvider:
                        AssetImage('assets/location_pics/icon_2.png'),
                    imageRadius: 15,
                  ),
                ),
                top: 120,
                left: 90,
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 800),
                    child: LocationPages.buildAuldalePage(context)));
                  },
                  child: LocationIconCircleImage(
                    imageProvider:
                        AssetImage('assets/location_pics/icon_3.png'),
                    imageRadius: 15,
                  ),
                ),
                top: 135,
                right: 100,
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 800),
                    child: LocationPages.buildOldQuarterPage(context)));
                  },
                  child: LocationIconCircleImage(
                    imageProvider:
                        AssetImage('assets/location_pics/icon_4.png'),
                    imageRadius: 15,
                  ),
                ),
                top: 170,
                left: 220,
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 800),
                    child: LocationPages.buildDocksPage(context)));
                  },
                  child: LocationIconCircleImage(
                    imageProvider:
                        AssetImage('assets/location_pics/icon_5.png'),
                    imageRadius: 15,
                  ),
                ),
                bottom: 70,
                left: 120,
              )
            ],
          )),
    );
  }

  static Widget buildLocationCardAdditional(BuildContext context) {
    return Center(
      child: Container(
          constraints: BoxConstraints.expand(
            width: 450,
            height: 450,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/location_pics/city.jpg'),
                  fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(Radius.circular(10.0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Other locations: '),
              SizedBox(height: 30),
              IntrinsicWidth(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        child: Text('The Pagan Forest',
                            style: TextStyle(
                                fontFamily: 'Charlesworth',
                                fontSize: 18.0
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 800),
                                  child: LocationPages.buildPaganForestPage(context)
                              ));
                        }),

                    SizedBox(height: 15),
                    ElevatedButton(
                        child: Text('Blackbrook',
                            style: TextStyle(
                                fontFamily: 'Charlesworth',
                                fontSize: 18.0
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 800),
                                  child: LocationPages.buildBlackbrookPage(context)
                              ));
                        }),
                    SizedBox(height: 15),
                    ElevatedButton(
                        child: Text('The City Sewers',
                            style: TextStyle(
                                fontFamily: 'Charlesworth',
                                fontSize: 18.0
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 800),
                                  child: LocationPages.buildSewersPage(context))
                          );
                        }),
                    SizedBox(height: 15),
                    ElevatedButton(
                        child: Text('Shalebridge Cradle',
                            style: TextStyle(
                                fontFamily: 'Charlesworth',
                                fontSize: 18.0
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 800),
                                  child: LocationPages.buildShalebridgePage(context)
                              )
                          );
                        }),
                    SizedBox(height: 15),
                    ElevatedButton(
                        child: Text('Wieldstrom Museum',
                            style: TextStyle(
                                fontFamily: 'Charlesworth',
                                fontSize: 18.0
                            )),
                        onPressed: () {
                          Navigator.push(context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 800),
                                  child: LocationPages.buildMuseumPage(context)
                              ));
                        }),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

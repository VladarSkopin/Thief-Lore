import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'location_icon_circle_image.dart';
import 'location_pages.dart';

class LocationOptionsList {
  static Widget buildLocationOptionsList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
      child: ListView.builder(
          primary: false,
          //physics: NeverScrollableScrollPhysics(),
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Text('Tap to know more: ',
                      style: Theme.of(context).textTheme.subtitle1),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 600),
                            child: LocationPages.buildStonemarketPage(context))
                    );
                  },
                  child: Row(children: [
                    LocationIconCircleImage(
                      imageProvider:
                          AssetImage('assets/location_pics/icon_1.png'),
                      imageRadius: 15,
                    ),
                    const SizedBox(width: 16),
                    Text('Stonemarket', style: TextStyle(
                      fontSize: 20
                    ))
                  ]),
                ),
                const SizedBox(height: 10),
                SizedBox(height: 4,
                    child: Container(color: Colors.indigo.withOpacity(0.5))),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 600),
                            child: LocationPages.buildSouthQuarterPage(context)));
                  },
                  child: Row(children: [
                    LocationIconCircleImage(
                      imageProvider:
                          AssetImage('assets/location_pics/icon_2.png'),
                      imageRadius: 15,
                    ),
                    const SizedBox(width: 16),
                    Text('South Quarter', style: TextStyle(
                        fontSize: 20
                    ))
                  ]),
                ),
                const SizedBox(height: 10),
                SizedBox(height: 4,
                    child: Container(color: Colors.indigo.withOpacity(0.5))),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 600),
                            child: LocationPages.buildAuldalePage(context)));
                  },
                  child: Row(children: [
                    LocationIconCircleImage(
                      imageProvider:
                          AssetImage('assets/location_pics/icon_3.png'),
                      imageRadius: 15,
                    ),
                    const SizedBox(width: 16),
                    Text('Auldale', style: TextStyle(
                        fontSize: 20
                    ))
                  ]),
                ),
                const SizedBox(height: 10),
                SizedBox(height: 4,
                    child: Container(color: Colors.indigo.withOpacity(0.5))),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 600),
                            child: LocationPages.buildOldQuarterPage(context)));
                  },
                  child: Row(children: [
                    LocationIconCircleImage(
                      imageProvider:
                          AssetImage('assets/location_pics/icon_4.png'),
                      imageRadius: 15,
                    ),
                    const SizedBox(width: 16),
                    Text('Old Quarter', style: TextStyle(
                        fontSize: 20
                    ))
                  ]),
                ),
                const SizedBox(height: 10),
                SizedBox(height: 4,
                    child: Container(color: Colors.indigo.withOpacity(0.5))),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 600),
                            child: LocationPages.buildDocksPage(context)));
                  },
                  child: Row(children: [
                    LocationIconCircleImage(
                      imageProvider:
                          AssetImage('assets/location_pics/icon_5.png'),
                      imageRadius: 15,
                    ),
                    const SizedBox(width: 16),
                    Text('The Docks', style: TextStyle(
                        fontSize: 20
                    ))
                  ]),
                ),
                const SizedBox(height: 20),
              ],
            );
          }),
    );
  }
}

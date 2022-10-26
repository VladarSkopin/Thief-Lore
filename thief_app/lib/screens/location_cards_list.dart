import 'package:flutter/material.dart';
import '../widgets/location_card.dart';

class LocationCardsList {
  static Widget buildLocationCardList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(width: 3, color: Colors.black54)),
                    content: Text(
                      'Of course, this is not a complete map, but it is the best out there.',
                      style: TextStyle(
                          fontFamily: 'JD', color: Colors.white, fontSize: 30),
                    )));
              },
              icon: Icon(Icons.location_pin),
              color: Colors.yellowAccent,
              iconSize: 30,
            ),
            SizedBox(width: 30),
            Expanded(
              child: Text('Thief World Locations',
                  style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ]),
          const SizedBox(height: 16),
          Divider(
              height: 3, thickness: 3, color: Color.fromRGBO(36, 75, 80, 1)),
          Divider(
              height: 3, thickness: 3, color: Color.fromRGBO(36, 66, 70, 1)),
          Divider(
              height: 3, thickness: 3, color: Color.fromRGBO(25, 51, 57, 1)),
          Container(
            height: 400,
            color: Colors.grey[900],
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Row(
                children: [
                  LocationCard.buildLocationCardCityMap(context),
                  LocationCard.buildLocationCardAdditional(context)
                ],
              )
            ]),
          ),
          Divider(
              height: 3, thickness: 3, color: Color.fromRGBO(25, 51, 57, 1)),
          Divider(
              height: 3, thickness: 3, color: Color.fromRGBO(36, 66, 70, 1)),
          Divider(
              height: 3, thickness: 3, color: Color.fromRGBO(36, 75, 80, 1)),
        ],
      ),
    );
  }
}

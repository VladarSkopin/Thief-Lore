import 'package:flutter/material.dart';
import 'faction.dart';
import 'faction_card.dart';
import 'package:page_transition/page_transition.dart';

class FactionList extends StatelessWidget {
  final factionList = Faction.factions;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color.fromRGBO(116, 109, 122, 1),
        //backgroundColor: Colors.blueGrey.shade800,
        //backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
            title:
                Text('Factions', style: Theme.of(context).textTheme.headline1)),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff6e4e2e),
                Color(0xff714732),
                Color(0xff714037),
                Color(0xff6e3a3e),
                Color(0xff683745),
                Color(0xff5f354c),
                Color(0xff533451),
                Color(0xff453454),
              ],
              tileMode: TileMode.mirror,
            )
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            itemCount: factionList.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4.0,
                shadowColor: Colors.amber,
                shape: BeveledRectangleBorder(
                  side: BorderSide(
                    //color: Color.fromRGBO(54, 48, 128, 1),
                    color: Colors.grey[600]!,
                    width: 2
                  ),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                        type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 600),
                              child:
                              (index == 0) ?
                                FactionCard.buildHammeriteCard(context) :
                              (index == 1) ?
                                FactionCard.buildPaganCard(context) :
                              (index == 2) ?
                                FactionCard.buildKeeperCard(context) :
                              (index == 3) ?
                                FactionCard.buildBrotherhoodCard(
                                    context) :
                              (index == 4) ?
                                FactionCard.buildMechanistCard(context) :
                              Scaffold(
                                appBar: AppBar(),
                                body: Container(
                                  child: Center(child: Text("Unknown faction card",
                                    style: Theme.of(context).textTheme.headline1?.copyWith(
                                        color: Colors.amber,
                                        fontSize: 20
                                    ),)),
                                  color: Colors.black,
                                ),
                              )
                          ),
                        );
                      },
                      child: Container(
                        constraints: BoxConstraints.expand(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 2.5,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(factionList[index].image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(factionList[index].title,
                        style: Theme.of(context).textTheme.headline6),
                    SizedBox(height: 20),
                  ]),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 40,
              );
            },
          ),
        ),
      ),
    );
  }
}

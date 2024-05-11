

import 'package:SmartSpeaker/Screens/Cards/categories.dart';
import 'package:SmartSpeaker/Screens/sectionOne/firstSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/getwidget.dart';

class getStarted extends StatefulWidget {
  const getStarted({Key? key}) : super(key: key);
  static String routeName = "/getStarted";
  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    String personType1 = 'Deaf';
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(83),
          child: Container(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    "Choose an Option",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white70,
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(10, 141, 246, 1.0),
                borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(50.0),
                    bottomRight: const Radius.circular(50.0))),
          ),
        ),
        backgroundColor: Color.fromRGBO(36, 36, 66, 1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SpeechScreen.routeName);
                },
                child: GFCard(
                  color: Color(0xFF0A8DF6),
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.all(9),
                  elevation: 9,
                  height: 250,
                  boxFit: BoxFit.cover,
                  //titlePosition: GFPosition.start,
                  //showOverlayImage: true,
                  //imageOverlay: AssetImage('assets/Chat1.png'),

                  title: GFListTile(
                    title: Center(
                      child: Text(
                        'Sign language to Text',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  showImage: true,
                  image:
                      Image.asset('assets/Chat1.png', width: 140, height: 140),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => categoriesState(personType1),
                    ),
                  );
                },
                child: GFCard(
                  color: Color(0xFF0A8DF6),
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.all(2),
                  elevation:9,
                  height: 280,
                  boxFit: BoxFit.cover,
                  //titlePosition: GFPosition.start,
                  //showOverlayImage: true,
                  //imageOverlay: AssetImage('assets/img1.png'),

                  title: GFListTile(
                    title: Center(
                      child: Text(
                        'Learn Sign language',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  showImage: true,
                  image:
                      Image.asset('assets/img1.png', width: 160, height: 190),
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => categoriesState(personType2),
              //       ),
              //     );
              //   },
              //   child: GFCard(
              //     color: Color(0xFF0A8DF6),
              //     clipBehavior: Clip.antiAlias,
              //     padding: EdgeInsets.all(3),
              //     elevation: 3,
              //     height: 195,
              //     boxFit: BoxFit.cover,
              //     //showOverlayImage: true,
              //     //imageOverlay: AssetImage('assets/img.jpg'),
              //
              //     title: GFListTile(
              //       title: Center(
              //         child: Text(
              //           'Lean By GIF',
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 23),
              //         ),
              //       ),
              //     ),
              //     showImage: true,
              //     image: Image.asset('assets/img.png', width: 110, height: 110),
              //   ),
              // ),
            ],
          ),
        ));
  }
}

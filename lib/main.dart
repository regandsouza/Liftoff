import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';
import 'quizmain.dart';
import 'package:quizzler/Theoffice.dart';
import 'package:quizzler/Launchpad.dart';

QuizBrain quizBrain = QuizBrain();


class LaunchSite extends StatefulWidget {
  @override
  _LaunchSiteState createState() => _LaunchSiteState();
}

class _LaunchSiteState extends State<LaunchSite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        body: SafeArea(
          child: LaunchArea(),
          /*Quizzler(),*/
        ),
      ),
    );
  }
}

class LaunchArea extends StatefulWidget {
  @override
  _LaunchAreaState createState() => _LaunchAreaState();
}

class _LaunchAreaState extends State<LaunchArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
              children: <Widget>[

                Center(child: Image.asset('assets/Lauchbackground.png',)),


                Positioned(
                  bottom: 30,
                  right: 40,
                  child: Opacity(
                    opacity: 0.4,
                    child: Container(
                      child: Expanded(
                        child: Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TheOfficeMain()),
                              );
                            },
                            splashColor: Colors.blue,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.blue[500]),
                              ),
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                      width: 230,
                      height: 170,
                    ),
                  ),
                ),


                Positioned(
                  top: 18,
                  left: 18,
                  child: Opacity(
                    opacity: 0.4,
                    child: Container(
                      child: Expanded(
                        child: Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LaunchMain()),
                              );
                            },
                            splashColor: Colors.blue,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.blue[500]),
                              ),
                              height: 36,
                            ),
                          ),
                        ),
                      ),
                      width: 220,
                      height: 175,
                    ),
                  ),
                ),

                Positioned(
                  top: 436,
                  right: 6,
                  child: Opacity(
                    opacity: 0.4,
                    child: Container(
                      child: Expanded(
                        child: Material(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LaunchMain()),
                              );
                            },
                            splashColor: Colors.blue,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Colors.blue[500]),
                              ),
                              height: 36,
                            ),
                          ),
                        ),
                      ),
                      width: 162,
                      height: 140,
                    ),
                  ),
                ),




          ],
          ),
        ),
      ),
    );
  }
}




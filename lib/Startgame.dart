//Game Initialization
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';
import 'quizmain.dart';
import 'package:quizzler/Theoffice.dart';
import 'package:quizzler/Launchpad.dart';
import 'package:quizzler/main.dart';

QuizBrain quizBrain = QuizBrain();
void main() => runApp(Start());


class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        body: SafeArea(
          child: StartSeason(),
          /*Quizzler(),*/
        ),
      ),
    );
  }
}



class StartSeason extends StatefulWidget {
  @override
  _StartSeasonState createState() => _StartSeasonState();
}

class _StartSeasonState extends State<StartSeason> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Container(
                  color: Colors.grey[400],
                  height: 140,
                  child: Align(alignment: Alignment.centerLeft,
                      child: Text('     Start game',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                      )),
                ),

                SizedBox(height: 42,),

                Container(
                  child: Expanded(
                    child: Material(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuizPage()),
                          );
                        },
                        splashColor: Colors.pink[300],
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Season 1',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w400,
                              ),
                              ),
                              Text('   (1990s - 2000s)',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    border: Border.all(width: 3,color: Colors.pink[500]),
                  ),
                  width: double.infinity,
                  height: 120,
                ),

                SizedBox(height: 34,),

                
                
                Container(
                  child: Expanded(
                    child: Material(
                      child: InkWell(
                        onTap: (){
                        },
                        splashColor: Colors.pink[200],
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Season 2',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text('   (coming soon....)',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    border: Border.all(width: 3,color: Colors.pink[500]),
                  ),
                  width: double.infinity,
                  height: 120,
                ),






              ],
            ),
          ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:quizzler/main.dart';
import 'package:quizzler/quizmain.dart';
import 'package:quizzler/MissionFacts.dart';

class TheOfficeMain extends StatefulWidget {
  @override
  _TheOfficeMainState createState() => _TheOfficeMainState();
}

class _TheOfficeMainState extends State<TheOfficeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Quizzler()),
    );
    },
        label: Text('Seek Funds'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'The Office',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Container(
            child: Text(
              '   Fund Secured 300,000',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(height: 40,),

          Column(
            children: <Widget>[
              Positioned(
                top: 10,
                child: Container(
                  child: Expanded(
                    child: Material(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MissionFact()),
                          );
                        },
                        splashColor: Colors.pink[200],
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[

                              SizedBox(width: 10,),

                              Container(
                                color: Colors.red,
                                height: 140,
                                width: 140,
                              ),

                              SizedBox(width: 12,),

                              Container(
                                width: 256,
                                height: 140,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    SizedBox(height: 6,),

                                    Text('NASA mission to repair the Hubble Telescope',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),

                                    SizedBox(height: 34,),

                                    Text('3 RS25 Liquid Engine',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),

                                    Text('2 Solid Booster Engine',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),

                                  ],
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
                    ),
                    border: Border.all(width: 3,color: Colors.pink[500]),
                  ),
                  width: double.infinity,
                  height: 160,
                ),
              ),

              Positioned(
                top: 10,
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '_ Upcoming.....',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    border: Border.all(width: 3,color: Colors.orange[500]),
                  ),
                  width: double.infinity,
                  height: 160,
                ),
              ),

              Positioned(
                top: 10,
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '_ Upcoming.....',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    border: Border.all(width: 3,color: Colors.orange[500]),
                  ),
                  width: double.infinity,
                  height: 160,
                ),
              ),


            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),

        ],
      ),
    );
    /*For back button:   void moveToLastScreen() {
    Navigator.pop(context);
  }
  } and use moveToLastScreen() on resizeToAvoidBottomPadding:

       */
  }
}


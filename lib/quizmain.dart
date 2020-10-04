import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizzler/NiceWorkUser.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';
import 'package:quizzler/main.dart';
import 'package:quizzler/NiceWorkUser.dart';

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[500],
      body: SafeArea(
        child: QuizPage(),
      ),
    ),
  );
}
}

class QuizPage extends StatefulWidget {
  @override

  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];


  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
      if (quizBrain.isFinished() == true) {
        //TODO Step 4 Part A - show an alert using rFlutter_alert,

        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:

        // ignore: unnecessary_statements

        //TODO Step 4 Part C - reset the questionNumber,
        quizBrain.reset();

        //TODO Step 4 Part D - empty out the scoreKeeper.
        scoreKeeper = [];

        picPosition=0;

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NiceWork()),
        );
      }

      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  int picPosition = 1;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10,10,10,10),
                child: Container(
                 /* decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/1a.png',
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.grey, BlendMode.dstATop),
                    ),
                  ),*/
                  height: MediaQuery.of(context).size.height*0.5,
                  child: Expanded(
                    flex: 5,
                    child: Stack(
                      children: <Widget>[

                    Center(child: Image.asset('assets/$picPosition.png',fit: BoxFit.fill,)),


                    Center(
                      child: Container(
                        color: Colors.white,
                      child: Text(
                        quizBrain.getQuestionText(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ),


                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.08,
                  color: Colors.grey[300],
                  child: Row(
                    children: scoreKeeper,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10,10,10,10),
                child: Container(
                    height: MediaQuery.of(context).size.height*0.31,
                    color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                      Container(
                        color: Colors.black26,
                        height: MediaQuery.of(context).size.height*(0.31/2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[


                        Expanded(
                           child: Material(
                             child: InkWell(
                               onTap: () {
                                   checkAnswer(quizBrain.getOption1());
                                   picPosition++;
                               },
                               splashColor: Colors.orange,
                               child: Container(
                                 decoration: BoxDecoration(
                                   border: Border.all(width: 2, color: Colors.orange[500]),
                                 ),
                                 height: 36,
                                   child: Center(child: Text(
                                     quizBrain.getOption1(),
                                     style: TextStyle(
                                       fontSize: 22,
                                     ),
                                   )),
                                 ),
                               ),
                             ),
                           ),

                            Expanded(
                              child: Material(
                                child: InkWell(
                                  onTap: () {
                                    checkAnswer(quizBrain.getOption2());
                                    picPosition++;
                                    },
                                  splashColor: Colors.pink,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2, color: Colors.pink[500]),
                                    ),
                                    height: 36,
                                    child: Center(child: Text(
                                      quizBrain.getOption2(),
                                      style: TextStyle(
                                        fontSize: 22,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ),

                    ],
                        ),
                      ),

                      Container(
                        color: Colors.black26,
                        height: MediaQuery.of(context).size.height*(0.31/2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Expanded(
                              child: Material(
                                child: InkWell(
                                  onTap: () {
                                    checkAnswer(quizBrain.getOption3());
                                    picPosition++;
                                  },
                                  splashColor: Colors.yellow,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2, color: Colors.yellow[700]),
                                    ),
                                    height: 36,
                                    child: Center(child: Text(
                                      quizBrain.getOption3(),
                                      style: TextStyle(
                                        fontSize: 22,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Material(
                                child: InkWell(
                                  onTap: () {
                                    checkAnswer(quizBrain.getOption4());
                                    picPosition++;
                                  },
                                  splashColor: Colors.blue,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 2, color: Colors.blue[500]),
                                    ),
                                    height: 36,
                                    child: Center(child: Text(
                                      quizBrain.getOption4(),
                                      style: TextStyle(
                                        fontSize: 22,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),


                    ],
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

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/

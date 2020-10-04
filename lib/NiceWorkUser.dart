import 'package:flutter/material.dart';
import 'package:quizzler/Theoffice.dart';
import 'package:quizzler/main.dart';


class NiceWork extends StatefulWidget {
  @override
  _NiceWorkState createState() => _NiceWorkState();
}

class _NiceWorkState extends State<NiceWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TheOfficeMain()),
          );
        },
        child: SafeArea(
        child: Stack(
          children: <Widget>[

            Center(child: Image.asset('assets/guy.png',fit: BoxFit.fill,)),

            Positioned(
              top: 380,
              left: 136,
              child: Text(
                'Great work on the Trivia',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),

            Positioned(
              top: 410,
              left: 136,
              child: Text(
                  'You have earned some funds',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
            )

          ],
        ),
      ),
      ),
    );
  }
}

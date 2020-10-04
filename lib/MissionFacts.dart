import 'package:flutter/material.dart';
import 'package:quizzler/Theoffice.dart';
import 'package:quizzler/main.dart';


class MissionFact extends StatefulWidget {
  @override
  _MissionFactState createState() => _MissionFactState();
}

class _MissionFactState extends State<MissionFact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LaunchArea()),
      );
    },
      child: Center(child: Image.asset('assets/Mission1Fact.png',)),
    ),
    );
  }
}

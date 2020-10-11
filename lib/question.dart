//Class for the MCQ system
class Question {
  String questionText;
  bool questionAnswer;
  String ops1;
  String ops2;
  String ops3;
  String ops4;

  Question(String q, bool a, String i, String j, String k, String l) {
    questionText = q;
    questionAnswer = a;
    ops1 = i;
    ops2 = j;
    ops3 = k;
    ops4 = l;
  }
}

import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Who was the First man to step foot on moon', true,'Neil Armstrong','Buzz aldrin','Yuri Gagarin','Elon Musk'),
    Question('Which year space shuttle first flew', false,'1981','1986','1990','2001'),
    Question('Second person to land on moon', false,'Michael collins','Buzz aldrin','Michael Buzz','Dwayne Johnson'),
    Question('What planet or moon did curiosity Rover Land', true,'Venus','Moon','Titan','Mars'),
    /*
    ADDITIONAL QUESTIONS TO BE ADDED HERE
    */
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }



  String getOption1(){
    return _questionBank[_questionNumber].ops1;
  }
  String getOption2(){
    return _questionBank[_questionNumber].ops2;
  }
  String getOption3(){
    return _questionBank[_questionNumber].ops3;
  }
  String getOption4(){
    return _questionBank[_questionNumber].ops4;
  }



  String getCorrectAnswer() {
    if(_questionNumber == 0||_questionNumber == 1) {
      return _questionBank[_questionNumber].ops1;
    }
    if(_questionNumber == 2) {
      return _questionBank[_questionNumber].ops2;
    }
    if(_questionNumber == 5) {
      return _questionBank[_questionNumber].ops3;
    }
    if(_questionNumber == 3) {
      return _questionBank[_questionNumber].ops4;
    }
    else return "null";
  }





  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}

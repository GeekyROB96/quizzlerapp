import 'package:quizzler/Question.dart';
class Quiz_brain{
  int _questionno =0;
  List<Question> _questionbank = [
  Question('India is the second most populous country in the world', true),
  Question('The national animal of India is the Bengal Tiger', true),
  Question('The Taj Mahal is located in Mumbai', false),
  Question('India gained independence from British rule in 1947', true),
  Question('Hindi is the official language of India', true),
  Question('The Indian rupee is the currency of India', true),
  Question('The national sport of India is cricket', true),
  Question('The capital city of India is New Delhi', true),
  Question('India is the largest democracy in the world', true),
  Question('The Indian flag has three colors: saffron, white, and green', false),
  Question('The Indian film industry is commonly known as Bollywood', true),
  Question('The Indian national bird is the Peacock', true),
  ];

  void nextQuestion(){
    if(_questionno < _questionbank.length-1)  {
      _questionno++;
    }
  }
  String getQuestionText( ){
    return _questionbank[_questionno].questionText;
  }
  bool getCorrectanswer( ){
    return _questionbank[_questionno].questionAnswer;
  }
  bool isFinished() {
    if (_questionno >= _questionbank.length - 1) {

      print('Now return');
      return true;

    } else {
      return false;
    }
  }

   void reset() {
    _questionno = 0;
  }
}
import 'Questions.dart';
class QuizBrain{

  int _questionNumber = 0;

  List<Questions> _questionBank = [
    Questions(q:'Some cats are actually allergic to humans', a: true),
    Questions(q:'You can lead a cow down stairs but not up stairs.', a:false),
    Questions(q:'Approximately one quarter of human bones are in the feet.', a:true),
    Questions(q:'A slug\'s blood is green.', a:true),
    Questions(q:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a:true),
    Questions(q:'It is illegal to pee in the Ocean in Portugal.',a: true),
    Questions(q:'No piece of square dry paper can be folded in half more than 7 times.',
        a:false),
    Questions(q:'Some cats are actually allergic to humans', a: true),
    Questions(q:'You can lead a cow down stairs but not up stairs.', a:false),
    Questions(q:'Approximately one quarter of human bones are in the feet.', a:true),
    Questions(q:'A slug\'s blood is green.', a:true),
    Questions(q:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a:true),
    Questions(q:'It is illegal to pee in the Ocean in Portugal.',a: true),
    Questions(
        q:'No piece of square dry paper can be folded in half more than 7 times.',
        a:false),

  ];

String getQuestionText()
{
  return _questionBank[ _questionNumber].questionText;
}

bool getCorrectAnswer()
{
  return _questionBank[_questionNumber].questionAnswer;
}


void nextQuestion (){
    if (_questionNumber < _questionBank.length-1)
      _questionNumber++;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
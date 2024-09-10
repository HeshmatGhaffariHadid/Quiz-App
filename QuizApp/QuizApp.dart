import 'dart:io';
import 'Answer.dart';
import 'Options.dart';
import 'Question.dart';
// 5. Create a simple quiz application using OOP that allows users to play and view their score.

void main() {
  print(
      '\n---------------------------------------- Welcome to our quiz application -------------------------------------------------\n');
  print(
      'For answerring the questions you have just three options, just press the number of the answer or press ZERO to exit the app\n');

  int score = 0;
  int input;

  Question question = Question();
  Options options = Options();
  Answer answer = Answer();

  for (int i = 0; i <= 7; i++) {
    print('${i + 1}- ${question.questions[i]}');
    print(options.options[i]);
    stdout.write('Your answer: ');
    input = int.parse(stdin.readLineSync()!);
    if (input > 0) {
      if (input == answer.answers[i]) {
        score++;
        print('Ture');
      } else {
        print('False');
      }
    } else {
      print('Oops! you closed the app, see you next time.');
      exit(0);
    }
    print('');
  }
  print('Your final Score is: $score');
}

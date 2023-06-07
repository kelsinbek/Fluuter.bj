import 'package:hw_7/models.dart';

class UseQiuze {
  int index = 0;
  List<QuizModel> surooJoop = [
    QuizModel(question: 'Is Sulayman-Too located in Jamaica?', answer: false),
    QuizModel(question: 'Do monkeys climb trees?', answer: true),
    QuizModel(
        question: 'Is the Great Wall of China located in Germany?',
        answer: false),
    QuizModel(
        question: 'Is Mount Everest the highest peak in the world?',
        answer: true),
    QuizModel(question: 'Is the Eiffel Tower located in London?', answer: false)
  ];

  String surooAluu() {
    return surooJoop[index].question;
  }

  bool joopAluu() {
    return surooJoop[index].answer;
  }

  void nextQuestion() {
    if (index <= surooJoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if (surooJoop[index] == surooJoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}

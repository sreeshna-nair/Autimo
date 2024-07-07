import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  final List<Question> _questions = [
    Question(
      text: 'What is the capital of France?',
      choices: ['Paris', 'London', 'Rome', 'Berlin'],
      correctAnswer: 'Paris',
    ),
    Question(
      text: 'Who painted the Mona Lisa?',
      choices: [
        'Pablo Picasso',
        'Leonardo da Vinci',
        'Vincent van Gogh',
        'Claude Monet'
      ],
      correctAnswer: 'Leonardo da Vinci',
    ),
    Question(
      text: 'Which planet is known as the Red Planet?',
      choices: ['Venus', 'Mars', 'Jupiter', 'Saturn'],
      correctAnswer: 'Mars',
    ),
  ];

  void _checkAnswer(String selectedChoice) {
    setState(() {
      if (_questions[_currentQuestionIndex].correctAnswer == selectedChoice) {
        _score++;
      }

      _currentQuestionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: _currentQuestionIndex < _questions.length
          ? QuizQuestion(
              question: _questions[_currentQuestionIndex],
              onAnswerSelected: _checkAnswer,
            )
          : QuizResult(
              score: _score,
              totalQuestions: _questions.length,
              onResetQuiz: _resetQuiz,
            ),
    );
  }
}

class QuizQuestion extends StatelessWidget {
  final Question question;
  final ValueChanged<String> onAnswerSelected;

  const QuizQuestion({
    Key? key,
    required this.question,
    required this.onAnswerSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            question.text,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        SizedBox(height: 16.0),
        Column(
          children: question.choices.map((choice) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ElevatedButton(
                onPressed: () => onAnswerSelected(choice),
                child: Text(choice),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class QuizResult extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback onResetQuiz;

  const QuizResult({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.onResetQuiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Quiz Completed!',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16.0),
        Text(
          'Your Score: $score / $totalQuestions',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: onResetQuiz,
          child: Text('Restart Quiz'),
        ),
      ],
    );
  }
}

class Question {
  final String text;
  final List<String> choices;
  final String correctAnswer;

  Question({
    required this.text,
    required this.choices,
    required this.correctAnswer,
  });
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ColorIdentificationGameApp());
}

class ColorIdentificationGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Identification Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorIdentificationGamePage(),
    );
  }
}

class ColorIdentificationGamePage extends StatefulWidget {
  @override
  _ColorIdentificationGamePageState createState() =>
      _ColorIdentificationGamePageState();
}

class _ColorIdentificationGamePageState
    extends State<ColorIdentificationGamePage> {
  final List<String> colorNames = [
    'Red',
    'Green',
    'Blue',
    'Yellow',
    'Orange',
    'Purple',
    'Pink',
    'Brown',
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
  ];

  late int randomIndex;
  late Color selectedColor;
  late String selectedColorName;
  late bool isCorrect;

  @override
  void initState() {
    super.initState();
    randomIndex = Random().nextInt(colors.length);
    selectedColor = colors[randomIndex];
    selectedColorName = colorNames[randomIndex];
    isCorrect = false;
  }

  void checkAnswer(String selectedName) {
    setState(() {
      isCorrect = selectedName == selectedColorName;
    });
  }

  void nextQuestion() {
    setState(() {
      randomIndex = Random().nextInt(colors.length);
      selectedColor = colors[randomIndex];
      selectedColorName = colorNames[randomIndex];
      isCorrect = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Identification Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: selectedColor,
            ),
            SizedBox(height: 20),
            Text(
              'Guess the color!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: colorNames.map((name) {
                var styleFrom2 = ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(230, 207, 29, 16),
                  backgroundColor: Color.fromARGB(255, 145, 53, 225),
                );
                var styleFrom = styleFrom2;
                return ElevatedButton(
                  onPressed: isCorrect ? null : () => checkAnswer(name),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: styleFrom,
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            if (isCorrect)
              ElevatedButton(
                onPressed: nextQuestion,
                child: Text('Next Question'),
              ),
          ],
        ),
      ),
    );
  }
}

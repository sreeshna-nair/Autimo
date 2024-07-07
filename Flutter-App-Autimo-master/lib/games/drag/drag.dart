import 'package:flutter/material.dart';

void main() {
  runApp(DragImagesGame());
}

class DragImagesGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DragImagesScreen(),
    );
  }
}

class DragImagesScreen extends StatefulWidget {
  @override
  _DragImagesScreenState createState() => _DragImagesScreenState();
}

class _DragImagesScreenState extends State<DragImagesScreen> {
  List<String> images = [
    'assets/images/octo.png',
    'assets/images/shark.png',
    'assets/images/whale.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag Images Game'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Draggable(
                  data: images[index],
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                  feedback: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Container(
            height: 200,
            color: Colors.grey,
            child: DragTarget(
              builder: (context, List<String?> candidateData, rejectedData) {
                return Center(
                  child: Text(
                    'Drag Images Here',
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
              onAccept: (data) {
                setState(() {
                  images.remove(data);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class MyHomePage1 extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  final _itemImage = [
    Image.asset("assets/images/apple.jpg"),
    Image.asset("assets/images/ball.jpg"),
    Image.asset("assets/images/cat.jpg"),
    Image.asset("assets/images/dog.jpg"),
    Image.asset("assets/images/elephant.jpg"),
    Image.asset("assets/images/fish.jpg"),
    Image.asset("assets/images/grapes.jpg"),
    Image.asset("assets/images/hen.jpg"),
    Image.asset("assets/images/ice-cream.jpg"),
    Image.asset("assets/images/jug.jpg"),
    Image.asset("assets/images/kite.jpg"),
    Image.asset("assets/images/lion.jpg"),
    Image.asset("assets/images/mango.jpg"),
    Image.asset("assets/images/nest.jpg"),
    Image.asset("assets/images/orange.jpg"),
    Image.asset("assets/images/peacock.jpg"),
    Image.asset("assets/images/queen.jpg"),
    Image.asset("assets/images/rabbit.jpg"),
    Image.asset("assets/images/ship.jpg"),
    Image.asset("assets/images/tiger.jpg"),
    Image.asset("assets/images/umbrella.jpg"),
    Image.asset("assets/images/van.jpg"),
    Image.asset("assets/images/watch.jpg"),
    Image.asset("assets/images/xalp.jpg"),
    Image.asset("assets/images/yark.jpg"),
    Image.asset("assets/images/zebra.jpg"),
  ];
  final _text = [
    "This is Apple",
    "This is Ball",
    "This is Cat",
    "This is Dog",
    "This is Elephant",
    "This is Fish",
    "This is Grapes",
    "This is Hen",
    "This is Ice cream",
    "This is Jug",
    "This is Kite",
    "This is Lion",
    "This is Mango",
    "This is Nest",
    "This is Orange",
    "This is Peacock",
    "This is Queen",
    "This is Rabbit",
    "This is Ship",
    "This is Tiger",
    "This is Umberlla",
    "This is Van",
    "This is Watch",
    "This is Xylophone",
    "This is Yak",
    "This is Zebra"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 30),
                child: Container(
                  child: _itemImage[index],
                  width: 500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  _text[index],
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: Text("A")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: Text("B")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: Text("C")),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 3;
                          });
                        },
                        child: Text("D")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 4;
                          });
                        },
                        child: Text("E")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 5;
                          });
                        },
                        child: Text("F")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 6;
                          });
                        },
                        child: Text("G")),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 7;
                          });
                        },
                        child: Text("H")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 8;
                          });
                        },
                        child: Text("I")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 9;
                          });
                        },
                        child: Text("J")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 10;
                          });
                        },
                        child: Text("K")),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 11;
                          });
                        },
                        child: Text("L")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 12;
                          });
                        },
                        child: Text("M")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 13;
                          });
                        },
                        child: Text("N")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 14;
                          });
                        },
                        child: Text("O")),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 15;
                          });
                        },
                        child: Text("P")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 16;
                          });
                        },
                        child: Text("Q")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 17;
                          });
                        },
                        child: Text("R")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 18;
                          });
                        },
                        child: Text("S")),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 19;
                          });
                        },
                        child: Text("T")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 20;
                          });
                        },
                        child: Text("U")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 21;
                          });
                        },
                        child: Text("V")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 22;
                          });
                        },
                        child: Text("W")),
                    SizedBox(
                      width: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 23;
                          });
                        },
                        child: Text("X")),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 1, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 24;
                          });
                        },
                        child: Text("Y")),
                    SizedBox(
                      width: 13,
                    ),
                    // ignore: deprecated_member_use
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            index = 25;
                          });
                        },
                        child: Text("Z")),
                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

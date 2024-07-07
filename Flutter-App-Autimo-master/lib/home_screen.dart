import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_autimo/category.dart';
import 'package:test_autimo/constants.dart';
import 'package:test_autimo/signin_screen.dart';

class PopupWidget extends StatelessWidget {
  final String text;

  PopupWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('NOTIFICATION'),
      content: Text(text),
      actions: [
        ElevatedButton(
          child: Text('CLOSE'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /*  late Timer _timer;
  List<String> keys = DataStorage.taskData.keys.toList();
  List<String> values = DataStorage.taskData.values.toList();

  @override
  void initState() {
    super.initState();
    /* _timer = Timer.periodic(Duration(minutes: 1), (timer) {
      DateTime currentTime = DateTime.now();
      String hournow = DateFormat('HH').format(currentTime);
      int sizeofdictionary = DataStorage.taskData.length; */

    for (int indexnum = 0; indexnum < 5; indexnum++) {
      //    if (keys[indexnum] == hournow) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return PopupWidget(
            text: values[indexnum],
          );
        },
      );
      //  }
    }
    //  });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi there!!"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white, // Text Color
              ),
              child: Text("Logout"),
              onPressed: () {
                FirebaseAuth.instance.signOut().then(
                  (value) {
                    print("Signed Out");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kblue,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/welcome.jpg"))
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                color: kblue,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        //now we create model of our images and colors which we will use in our app
                        const SizedBox(
                          height: 20,
                        ),
//we can not use gridview inside column
//use shrinkwrap and physical scroll
                        CategoryList(),
                        const SizedBox(
                          height: 20,
                        ),
                        Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

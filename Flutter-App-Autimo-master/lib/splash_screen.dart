import 'package:test_autimo/signin_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context)
          .pushReplacement(CupertinoPageRoute(builder: (ctx) => SignMain()));
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image(
                  image: AssetImage('assets/images/butterfly.png'), width: 300.0),
              Text(
                "Autimo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 26, 240, 240),
                  fontWeight: FontWeight.bold,
                  fontSize: 70.0,
                ),
              ),
              SizedBox(
                height: 300.0,
              ),
              SpinKitSpinningLines(
                color: Colors.blue,
                size: 50.0,
              )
            ],
          )),
    );
  }
}

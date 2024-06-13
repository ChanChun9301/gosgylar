import 'dart:async';
import 'package:flutter/material.dart';
import 'homeScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: Center(
              child: SizedBox(
                  width: w / 1.2,
                  child: Image.asset(
                    "nav_logo.png",
                    fit: BoxFit.fill,
                  )))),
    );
  }
}

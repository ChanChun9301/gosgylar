import 'dart:async';
import 'package:flutter/material.dart';
import 'homePage.dart';

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
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: Center(
              child: SizedBox(
                  width: w / 1.2,
                  child: Image.asset(
                    "logo.png",
                    fit: BoxFit.fill,
                  )))),
    );
  }
}

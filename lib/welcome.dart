import 'dart:async';
import 'package:flutter/material.dart';
import 'homePage.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
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
      backgroundColor: const Color(0xff0f4064),
      body: Container(
          color: const Color(0xffecf2ff),
          padding: const EdgeInsets.all(15),
          child: Center(
              child: SizedBox(
                  width: w / 1.2,
                  child: Image.asset(
                    "assets/logo_light.png",
                    fit: BoxFit.fill,
                  )))),
    );
  }
}

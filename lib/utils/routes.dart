import 'package:flutter/material.dart';
import 'package:project/homeScreen.dart';
import 'package:project/listPoem.dart';
import 'package:project/welcome.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomeScreen(),
  '/welcome': (context) => const WelcomeScreen(),
  '/list': (context) => const ListPoem(),
};

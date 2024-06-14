import 'package:flutter/material.dart';
import 'package:project/homePage.dart';
import 'package:project/listPoem.dart';
import 'package:project/welcome.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
  '/welcome': (context) => const WelcomeScreen(),
  '/list': (context) => const ListPoem(),
};

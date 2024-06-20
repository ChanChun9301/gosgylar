import 'package:flutter/material.dart';
import 'package:project/homePage.dart';
import 'package:project/pages/detailPage.dart';
import 'package:project/pages/listPoem.dart';
import 'package:project/pages/profilPage.dart';
import 'package:project/welcome.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
  '/welcome': (context) => const WelcomeScreen(),
  '/list': (context) => const ListPoem(),
  '/detail': (context) => DetailPage(id: 2),
  '/profil': (context) => ProfilPage()
};

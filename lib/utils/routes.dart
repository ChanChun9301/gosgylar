import 'package:flutter/material.dart';
import '../pages/detailPage.dart';
import '../pages/listPoem.dart';
import '../pages/profilPage.dart';
import '../welcome.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const ListPoem(),
  '/profil': (context) => const ProfilPage(),
  '/welcome': (context) => const WelcomeScreen(),
  '/detail': (context) => DetailPage(id: 2,title: '',),
};

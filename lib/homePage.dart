import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/listPoem.dart';
import 'package:project/pages/favoritePage.dart';
import 'package:project/pages/homeScreen.dart';
import 'package:project/pages/profilPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: getSelectedWidget(index: _page),
        bottomNavigationBar: CurvedNavigationBar(
            items: const <Widget>[
              Icon(Icons.home),
              Icon(Icons.list_alt_outlined),
              Icon(Icons.favorite_border_outlined),
              Icon(CupertinoIcons.info_circle),
            ],
            backgroundColor: Theme.of(context).colorScheme.background,
            color: Theme.of(context).colorScheme.primary,
            animationCurve: Curves.easeInCubic,
            animationDuration: const Duration(milliseconds: 300),
            letIndexChange: (index) => true,
            // index: _page,
            onTap: (index) {
              setState(() {
                _page = index;
              });
            }));
  }

  getSelectedWidget({required int index}) {
    dynamic widget;
    switch (index) {
      case 0:
        widget =const  HomeScreen();
        break;
      case 1:
        widget = const ListPoem();
        break;
      case 2:
        widget = const FavListPoem();
        break;
      case 3:
        widget = ProfilPage();
        break;
      default:
        widget = const HomePage();
        break;
    }
    return widget;
  }
}

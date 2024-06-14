import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/listPoem.dart';
import 'package:project/pages/favoritePage.dart';
import 'package:project/pages/homeScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  List<dynamic> _pages = [
    ListPoem(),
    HomeScreen(),
    FavListPoem(),
    // SearchFilter(),
  ];

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
        widget = HomeScreen();
        break;
      case 1:
        widget = ListPoem();
        break;
      case 2:
        widget = FavListPoem();
        break;
      case 3:
        widget = ListPoem();
        // widget = InfoPage();
        break;
      case 4:
        widget = ListPoem();
        // widget = SearchPage();
        break;
      default:
        widget = ListPoem();
        break;
    }
    return widget;
  }
}

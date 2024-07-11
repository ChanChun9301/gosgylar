// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/listPoem.dart';
import '../pages/favoritePage.dart';
import '../pages/profilPage.dart';

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
        backgroundColor: const Color(0xffecf2ff),
        body: getSelectedWidget(index: _page),
        bottomNavigationBar: CurvedNavigationBar(
            items: const <Widget>[
              Icon(
                Icons.list_alt_outlined,
                color: Colors.white,
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
              Icon(
                CupertinoIcons.info_circle,
                color: Colors.white,
              ),
            ],
            backgroundColor: const Color(0xffecf2ff),
            color: const Color(0xff0f4064),
            animationCurve: Curves.easeInCubic,
            animationDuration: const Duration(milliseconds: 300),
            letIndexChange: (index) => true,
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
        widget = const ListPoem();
        break;
      case 1:
        widget = const FavListPoem();
        break;
      case 2:
        widget = const ProfilPage();
        break;
      default:
        widget = const ListPoem();
        break;
    }
    return widget;
  }
}

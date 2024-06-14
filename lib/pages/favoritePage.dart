import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/favlistWidget.dart';

class FavListPoem extends StatefulWidget {
  const FavListPoem({super.key});

  @override
  State<FavListPoem> createState() => _FavListPoemState();
}

class _FavListPoemState extends State<FavListPoem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Halanlarym',
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const FavListWidget();
        },
      ),
    );
  }
}

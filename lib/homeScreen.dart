import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/categories.dart';
import 'package:project/listPoem.dart';
import 'package:project/popular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 242, 223),
        title: const Text(
          'Sözle, Annagylyç,  il  ýada  salsyn...',
          style: TextStyle(
              fontFamily: 'Quicksand-Bold',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/list');
              },
              icon: Icon(Icons.verified_user))
        ],
      ),
      body: SingleChildScrollView(
        // physics: FixedExtentScrollPhysics(),
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Goşgy kategoriýalary',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            CategoryPage(),
            SizedBox(height: 10),
            Text(
              '',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            PopularPage(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(Icons.home),
            Icon(Icons.list_alt_outlined),
            Icon(Icons.favorite_border_outlined),
            Icon(Icons.search),
            Icon(CupertinoIcons.info_circle),
          ],
          backgroundColor: Color.fromARGB(255, 255, 242, 223),
          color: Colors.white,
          animationCurve: Curves.easeInCubic,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          }),
    );
  }
}

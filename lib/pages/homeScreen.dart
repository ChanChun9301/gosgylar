import 'package:flutter/material.dart';
import 'package:project/categories.dart';
import 'package:project/popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Sözle, Annagylyç,  il  ýada  salsyn...',
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return Image.asset('logo.png');
          },
        ),
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
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'fon.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 15),
            Text(
              'Goşgy kategoriýalary',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Quicksand'),
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
    );
  }
}

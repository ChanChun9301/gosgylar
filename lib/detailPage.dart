import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  int id;
  DetailPage({Key? key,required this.id}):super(key:key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Aňlagyn'),
            SizedBox(
              height: 20,
            ),
            Text('Adamyň pälini, hereketini\nEdep-ekram alyşyndan aňlagyn.' +
                '\nDagyň-düzüň rysgal, bereketini\nNowruzynyň gelişinden aňlagyn.'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/detailPage.dart';

class FavListWidget extends StatefulWidget {
  String title;
  int id;
  FavListWidget({
    Key? key,
    required this.title,
    required this.id,
  }) : super(key: key);

  @override
  State<FavListWidget> createState() => _FavListWidgetState();
}

class _FavListWidgetState extends State<FavListWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(id: 1)));
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                ),
              ),
              CupertinoButton(
                child: const Icon(Icons.favorite_border_sharp),
                onPressed: () {},
              ),
            ],
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

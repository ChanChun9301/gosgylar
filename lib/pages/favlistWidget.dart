import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavListWidget extends StatefulWidget {
  const FavListWidget({super.key});

  @override
  State<FavListWidget> createState() => _FavListWidgetState();
}

class _FavListWidgetState extends State<FavListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Gosgy',
                style: TextStyle(
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

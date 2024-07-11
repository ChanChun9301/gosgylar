// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gosgylar/utils/gosgy.dart';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {
  int id;
  String title;
  DetailPage({super.key, required this.id, required this.title});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Map<String, dynamic>> filteredGosgy = [];
  @override
  void initState() {
    super.initState();
    filteredGosgy =
        gosgy.where((item) => item["gosgy_id"] == widget.id).toList();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.id.toString());
    log(filteredGosgy.toString());
    return Scaffold(
      backgroundColor: const Color(0xffecf2ff),
      appBar: AppBar(
          backgroundColor: const Color(0xff0f4064),
          title: Text(
            widget.title,
            style: const TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.white,
            ),
          )),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
                color: Color(0xff0f4064),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              filteredGosgy[0]['text'],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
                color: Color(0xff0f4064),
              ),
            ),
            // ListView.builder(
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return const Text(
            //         'data',
            //         style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //           fontFamily: 'Quicksand',
            //           color: Color(0xff0f4064),
            //         ),
            //       );
            //     })
          ],
        ),
      ),
    );
  }
}

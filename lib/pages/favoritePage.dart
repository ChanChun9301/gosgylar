// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/detailPage.dart';
import '../utils/models.dart';

class FavListPoem extends StatefulWidget {
  const FavListPoem({super.key});

  @override
  State<FavListPoem> createState() => _FavListPoemState();
}

class _FavListPoemState extends State<FavListPoem> {
  List<Map<String, dynamic>> selectedPoems = [];
  @override
  void initState() {
    selectedPoems = favPoems;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> result = [];
    if (enteredKeyword.isEmpty) {
      result = favPoems;
    } else {
      result = favPoems.where((element) {
        return element['title']
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase());
      }).toList();
    }

    setState(() {
      selectedPoems = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecf2ff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Gözle...',
                    hintStyle: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color(0xff0f4064),
                    ),
                    iconColor: Color(0xff131621),
                    prefixIcon:
                        Icon(Icons.search_outlined, color: Color(0xff0f4064))),
                onChanged: (value) => _runFilter(value),
                style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color(0xff0f4064))),
            Expanded(
              child: ListView.builder(
                itemCount: selectedPoems.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                    id: 1,
                                    title: selectedPoems[index]['title'],
                                  )));
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedPoems[index]['title'],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                color: Color(0xff0f4064),
                              ),
                            ),
                            CupertinoButton(
                              child: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.redAccent,
                              ),
                              onPressed: () {
                                setState(() {
                                  favPoems.removeWhere((map) =>
                                      map['id'] == selectedPoems[index]['id']);
                                });
                              },
                            ),
                          ],
                        ),
                        const Divider(
                          height: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/detailPage.dart';
import '../utils/models.dart';

class ListPoem extends StatefulWidget {
  const ListPoem({super.key});

  @override
  State<ListPoem> createState() => _ListPoemState();
}

class _ListPoemState extends State<ListPoem> {
  List<Map<String, dynamic>> selectedPoems = [];
  @override
  void initState() {
    selectedPoems = poems;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> result = [];
    if (enteredKeyword.isEmpty) {
      result = poems;
    } else {
      result = poems.where((element) {
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
                  bool contains = favPoems
                      .any((map) => map['id'] == selectedPoems[index]['id']);
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  id: selectedPoems[index]['id'],
                                  title: selectedPoems[index]['title'])));
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
                              child: Icon(
                                Icons.favorite_border_sharp,
                                color: (contains != true)
                                    ? const Color(0xff0f4064)
                                    : Colors.redAccent,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (contains != true) {
                                    favPoems.add({
                                      'id': selectedPoems[index]['id'],
                                      'title': selectedPoems[index]['title']
                                    });
                                  } else {
                                    favPoems.removeWhere((map) =>
                                        map['id'] ==
                                        selectedPoems[index]['id']);
                                  }
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

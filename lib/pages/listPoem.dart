import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/pages/listWidget.dart';
import 'package:project/utils/models.dart';

class ListPoem extends StatefulWidget {
  const ListPoem({super.key});

  @override
  State<ListPoem> createState() => _ListPoemState();
}

class _ListPoemState extends State<ListPoem> {
  List<Map<String, dynamic>> selected_poems = [];
  @override
  void initState() {
    selected_poems = poems;
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
      selected_poems = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Goşgylar',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextField(
                decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Gözle...',
                    hintStyle: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                    iconColor: Theme.of(context).colorScheme.background,
                    prefixIcon: Icon(Icons.search_outlined,
                        color: Theme.of(context).colorScheme.primary)),
                onChanged: (value) => _runFilter(value),
                style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black)),
            Expanded(
              child: ListView.builder(
                itemCount: selected_poems.length,
                itemBuilder: (context, index) {
                  return ListWidget(
                    title: selected_poems[index]['title'],
                    id: selected_poems[index]['id'],
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

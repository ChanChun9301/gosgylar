import 'package:flutter/cupertino.dart';

class ListPoem extends StatefulWidget {
  const ListPoem({super.key});

  @override
  State<ListPoem> createState() => _ListPoemState();
}

class _ListPoemState extends State<ListPoem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          child: Text('ttt'),
        );
      },
    );
  }
}

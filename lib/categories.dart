import 'package:flutter/material.dart';
import '../utils/models.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding:const EdgeInsets.all(10),
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color:const  Color(0xff6d6b6b).withOpacity(0.75),
                    offset: const Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: -2,
                  )
                ],
              ),
              child: Center(
                  child: Text(
                categories[index].title,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Quicksand'),
              )));
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
          height: 5,
        ),
      ),
    );
  }
}

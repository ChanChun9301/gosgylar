import 'package:flutter/material.dart';
import 'package:project/models.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              categories[index].title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )
            )
          );
        },
        separatorBuilder:(context,index)=>const SizedBox(width: 20,),
      ),
    );
  }
}
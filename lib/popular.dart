import 'package:flutter/material.dart';
import 'package:project/models.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child:GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(categories.length, (index) {
          return Container(
            width: 200,
            // height: 35,
            decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          categories[index].image,
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        categories[index].title,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
            );
        })
      )
    );
  }
}
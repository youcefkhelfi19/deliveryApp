import 'package:demo/pages/food_pages/category_foods_menu.dart';
import 'package:demo/widgets/category_card.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (2 / 1),
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          children: [
            CategoryCard(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryFoodsMenu(),
                    ));
              },
              imageUrl: 'images/pizza.png',
              name: 'Pizza',
              types: '15 Type',
            ),
            CategoryCard(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryFoodsMenu(),
                    ));
              },
              imageUrl: 'images/pizza.png',
              name: 'Pizza',
              types: '15 Type',
            ),
            CategoryCard(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryFoodsMenu(),
                    ));
              },
              imageUrl: 'images/pizza.png',
              name: 'Pizza',
              types: '15 Type',
            ),
          ],
        ),
      ),
    );
  }
}

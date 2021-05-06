import 'package:demo/pages/food_pages/food_details.dart';
import 'package:demo/pages/food_pages/foods_cart.dart';
import 'package:demo/widgets/food_menu_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryFoodsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Pizza',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
            fontSize: 25
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodsCart()),
                );
              })
        ],
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (context,index){
            return  FoodMenuItem(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodDetails()),

                );
              },
              foodPrice: '3000 DA',
              foodName: 'Cheese pizza',
              rating: '4.8',
              imagePath: 'images/pizza.jpg',
            );
          },
        ),
      ),
    );
  }
}

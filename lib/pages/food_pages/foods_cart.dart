import 'package:demo/widgets/order_food_card.dart';
import 'package:flutter/material.dart';

class FoodsCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.orange,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Foods Cart',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context , index){
                return  OrderCard(
                 foodName: 'Cheese Pizza',
                  foodPrice: '300 DA',
                  quantity: '2',
                  imagePath: 'images/pizza.jpg',
                );
              },

            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total :',
                  style :TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold
                ),
                ),
                Text('250 DA',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                  ),
                ),
                MaterialButton(
                    color: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: MediaQuery.of(context).size.height*0.06,
                    minWidth: MediaQuery.of(context).size.width*0.4,
                    child: Text('Add To Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){

                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

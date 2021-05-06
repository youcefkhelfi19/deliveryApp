import 'package:demo/pages/food_pages/foods_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.orange,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_bag,color: Colors.orange,),
              onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodsCart()),);
              })
        ],
      ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           height: MediaQuery.of(context).size.height*0.35,
           width: double.infinity,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('images/pizza.jpg'),
               fit: BoxFit.fill
             )
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Cheese Pizza',
               style: TextStyle(
                 color: Colors.deepOrange,
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
               ),
               ),

             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Row(
             children: [
               Text('Rating : ',
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 18,

                 ),
               ),
               Icon(Icons.star,color: Colors.yellow,),
               Text('4.8',
                 style: TextStyle(
                     fontSize: 16,
                     color: Colors.grey,

                 ),
               ),
               SizedBox(width: 165,),
               Icon(Icons.add_circle,color: Colors.orange,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('0',
                 style: TextStyle(fontSize: 16,
                 fontWeight: FontWeight.bold
                 ),
                 ),
               ),
               Icon(Icons.remove_circle,color: Colors.orange,),
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 20.0,top: 20.0,bottom: 10),
           child: Text('Ingredients',
           style: TextStyle(
             color: Colors.orange,
             fontWeight: FontWeight.bold,
             fontSize: 25,
           ),
           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20.0),
           width: double.infinity,
           height:MediaQuery.of(context).size.height*0.30,
           child: Text('It is a long established fact that a reader '
               'will be distracted by the readable content of a '
               'page when looking at its layout. The point of using '
               'Lorem Ipsum is that it has a more-or-less normal distribution '
               'of letters, as opposed to using',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18
            ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('250 DA',
               style: TextStyle(
                 fontSize: 25,
                 color: Colors.orange,
                 fontWeight: FontWeight.bold
               ),
               ),
               MaterialButton(
                 color: Colors.orange,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)
                 ),
                 height: MediaQuery.of(context).size.height*0.06,
                 minWidth: MediaQuery.of(context).size.width*0.5,
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

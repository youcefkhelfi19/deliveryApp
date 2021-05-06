import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String imagePath;
  final String foodName ;
  final String foodPrice ;
  final String quantity ;
  OrderCard({this.quantity,this.foodName,this.foodPrice,this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
          height: MediaQuery.of(context).size.height*0.1,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.3, 0.0),
                blurRadius: 6.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.height*0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imagePath,),
                      fit: BoxFit.fill
                  ),
                ),

              ),
              SizedBox(width: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(foodName,
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(foodPrice,
                      style:TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ) ,)
                  ],
                ),
              ),
              SizedBox(width: 40.0,),
              Row(
                children: [
                  Icon(Icons.add_circle,color: Colors.orange,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(quantity,
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Icon(Icons.remove_circle,color: Colors.orange,),
                ],
              ),

            ],
          ),
        ),
        Positioned(
          right : 10.0,
          top : 5.0,
          child: Icon(Icons.close,
            size: 20,
            color: Colors.orange,
          ),
        )
      ],
    );
  }
}

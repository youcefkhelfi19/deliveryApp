import 'package:flutter/material.dart';

class FoodMenuItem extends StatelessWidget {
  final String foodName;
  final String foodPrice;
  final String rating ;
  final String imagePath;
  final Function onTap;
  FoodMenuItem({this.onTap,this.foodPrice,this.foodName,this.imagePath,this.rating});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage(imagePath,
                        ),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(foodName,
                          style: TextStyle(color: Colors.orange,fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text(rating,
                              style: TextStyle(
                                  color: Colors.grey[600]
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(foodPrice,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(Icons.favorite_border,color: Colors.red,
                          size: 20.0,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

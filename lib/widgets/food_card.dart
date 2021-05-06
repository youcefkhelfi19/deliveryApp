import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
 final String rating;
 final Function onTap;
 final String name ;
 final String description ;
 final String price ;
 final String imageUrl;
 FoodCard({this.name,this.onTap,this.imageUrl,this.description,this.price,this.rating});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.00),
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                padding: EdgeInsets.all(8.0,),
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name,
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                        Text('$price DA',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        )
                      ],
                    ),
                    Text(description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child:Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),

                  Text(rating,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

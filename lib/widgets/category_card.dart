import 'package:flutter/material.dart';

import '../config.dart';

class CategoryCard extends StatelessWidget {
 final String imageUrl;
 final String id;
 final String name;
 final String types;
 final Function onTap;
 CategoryCard({this.id,this.onTap,this.imageUrl,this.name,this.types});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onTap,
      child: Container(
       margin :EdgeInsets.all(5.0),
       padding: EdgeInsets.all(8.0),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.white
       ),
       child: Row(
        children: [
         Image.asset(imageUrl),
         SizedBox(width: 10,),
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(name,
            style: style2,
           ),
           Text(types,
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
           )
          ],
         )
        ],
       ),
      ),
    );
  }
}

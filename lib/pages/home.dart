import 'package:demo/config.dart';
import 'package:demo/pages/food_pages/category_foods_menu.dart';
import 'package:demo/pages/food_pages/food_details.dart';
import 'package:demo/widgets/category_card.dart';
import 'package:demo/widgets/custom_drawer.dart';
import 'package:demo/widgets/food_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),

        elevation: 0.0,
      ),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.fromLTRB(20,0,20,0.0),
        child: ListView(

          children: [

            Row(
              children: [
                Text('Delivery to ',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18
                  ),
                ),

                Text(' Client Address',
                style: style3,
                ),
                IconButton(icon: Icon(Icons.keyboard_arrow_down_rounded,
                color: Colors.white,
                ),
                    onPressed: (){

                    })
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  hintText: 'Search here'
              ),
              validator: (value){
                if(value.isEmpty){
                  return 'Search here';
                }
                return null;
              },
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text('Categories',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
            ),

             SizedBox(
               height: 80,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: 4,
                 itemBuilder: (context, index){
                   return  CategoryCard(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryFoodsMenu(),));
                     },
                     imageUrl: 'images/pizza.png',
                     name: 'Pizza',
                     types: '15 Type',
                   );
                 },
               ),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0),
               child: Text('Most Wanted',
                style: TextStyle(
                     color: Colors.white,
                     fontSize: 25,
                     fontWeight: FontWeight.bold
                 ),
               ),
             ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: MediaQuery.of(context).size.height*0.5,
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context , index){
                  return FoodCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodDetails(),));
                    },
                    name: 'Vegetable soup',
                    price: '300',
                    rating: '4.9',
                    imageUrl: 'images/plate1.jpeg',
                    description: 'Soup with potato and a tomato with a little of chicken',
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        currentIndex: 0,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.notifications),
              label: 'Notifications'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label: 'Profile'
          ),
        ],
      ),
    );
  }
}

import 'package:demo/pages/auth_pages/change_password.dart';
import 'package:demo/pages/auth_pages/edit_profile.dart';
import 'package:demo/pages/food_pages/categories.dart';
import 'package:demo/pages/food_pages/favorite.dart';
import 'package:demo/pages/food_pages/foods_cart.dart';
import 'package:demo/pages/order_pages/tracking_order.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Youcef',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'Youcefkhe8@gmail.com',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            currentAccountPicture: GestureDetector(
              child:CircleAvatar(
                backgroundImage: AssetImage('images/noodles.jpg'),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orange
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.home_outlined,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()),);
                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),

                ListTile(
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Categories',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()),);

                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Cart',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodsCart()),);

                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite_border,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Favorite',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()),);

                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.airport_shuttle_outlined,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Tracking Order',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackingOrder()),);

                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.edit,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Edit account',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile(),),);
                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock_outline,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Change password',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChangePassword()),);
                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AddAddress()),);
                  },
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    'Sign out',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.deepOrange,
                  thickness: 1,
                  height: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

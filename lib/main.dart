import 'dart:async';

import 'package:demo/config.dart';
import 'package:demo/pages/get_started.dart';
import 'package:demo/pages/auth_pages/register.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
   MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.orange
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), ()  {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GetStarted()),);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange

          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/splash1.png'),
                SizedBox(height: 20,),
                Text('Easy online shopping',
                  style: style1
                )
              ],
            ),
          ),
        )
    );
  }

}



import 'package:demo/config.dart';
import 'package:demo/pages/auth_pages/register.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child:Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'images/get.jpg'
                    )
                  )
                ),
              ),
          ),
          Expanded(
              child:Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Happy Foods',style: style1,),

                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                    child: Text('Where you can meet your Delicious food',
                    style: style3
                    ),
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                         color: Colors.white,
                         child: Text('Get Started',
                         style: style2
                         ),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register(),),);
                        })
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}

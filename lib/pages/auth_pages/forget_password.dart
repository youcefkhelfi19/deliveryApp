import 'package:flutter/material.dart';

import '../../config.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                padding: EdgeInsets.only(top: 150,left: 20,bottom: 20),
                child: Text('Forget Password',
                  style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                 width: MediaQuery.of(context).size.width*0.9,
                 child: Text('Please enter your email to receive a link for reset your password ',
                 style: style3,
                 ),
               ) ,
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Email'
                ),
                validator: (value){
                  if(value.isEmpty||value.indexOf(".")==-1||value.indexOf('@')==-1){
                    return 'Invalid Email';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20.0,),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width*0.9,
                  color: Colors.deepOrange,
                  child: Text('Send',
                    style: style4,
                  ),
                  onPressed: (){

                  },
                ),
              ),

              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}

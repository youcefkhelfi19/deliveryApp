import 'package:demo/config.dart';
import 'package:demo/pages/home.dart';
import 'package:demo/pages/auth_pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(
                 width: MediaQuery.of(context).size.width*0.5,
                 padding: EdgeInsets.only(top: 150,bottom: 50),
                 child: Text('Create Your Account',
                 style: TextStyle(color: Colors.white,
                 fontSize: 30,
                 fontWeight: FontWeight.bold
                 ),
                 ),
               ),

              TextFormField(
                  decoration: InputDecoration(

                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    hintText: 'User name'
                  ),
                validator: (value){
                   if(value.isEmpty){
                     return 'User name is empty';
                   }
                   return null;
                },
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
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
              SizedBox(height: 10,),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    hintText: 'Phone number'
                ),
                validator: (value){
                  if(value.isEmpty){
                    return 'Phone number is empty';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    hintText: 'Password'
                ),
                validator: (value){
                  if(value.length<6){
                    return 'short password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                   height: 50,
                   minWidth: MediaQuery.of(context).size.width*0.9,
                  color: Colors.deepOrange,
                  child: Text('Register',
                  style: style4,
                  ),
                  onPressed: (){

                  },
                ),
              ),
              SizedBox(height: 10,),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                ),
                height: 50,
                minWidth: MediaQuery.of(context).size.width*0.9,
                color: Colors.blueAccent,
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Continuer with   ',
                    style: style3,
                    ),
                    Image.asset('images/fb.png',
                    height: 50,
                      width: 50,
                    )
                  ],
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(),),);
                },
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account ?',
                  style: style3,
                  ),
                  TextButton(
                      onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login(),),);
                      },
                      child: Text('Login',
                      style: TextStyle(
                        fontSize: 16
                      ),
                      ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

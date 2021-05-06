import 'package:demo/pages/auth_pages/forget_password.dart';
import 'package:demo/pages/auth_pages/register.dart';
import 'package:flutter/material.dart';

import '../../config.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                padding: EdgeInsets.only(top: 150,bottom: 50),
                child: Text('Login To Your Account',
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
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword(),),);
                  },
                  child: Text('Forget Password ?     '),
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width*0.9,
                  color: Colors.deepOrange,
                  child: Text('Login',
                    style: style4,
                  ),
                  onPressed: (){

                  },
                ),
              ),
              SizedBox(height: 10,),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You do not have account ?',
                    style: style3,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register(),),);
                    },
                    child: Text('Register',
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

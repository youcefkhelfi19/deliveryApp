import 'package:demo/config.dart';
import 'package:demo/pages/home.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()),);          },
        ),
      ),
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                padding: EdgeInsets.only(top: 150,bottom: 50),
                child: Text('Change password',
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
                    hintText: 'Old password'
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
                    hintText: 'New password'
                ),
                validator: (value){
                  if(value.length<6){
                    return 'short password';
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
                  child: Text('Change',
                    style: style4,
                  ),
                  onPressed: (){

                  },
                ),
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}

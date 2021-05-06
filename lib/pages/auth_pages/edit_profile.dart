import 'package:demo/config.dart';
import 'package:demo/pages/home.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                padding: EdgeInsets.only(top: 25,bottom: 50),
                child: Text('Create Your Account',
                  style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: MediaQuery.of(context).size.width*0.4,
                  width: MediaQuery.of(context).size.width*0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    color: Colors.red
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
                  child: Text('Save',
                    style: style4,
                  ),
                  onPressed: (){

                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

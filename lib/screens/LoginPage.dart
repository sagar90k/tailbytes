import 'package:flutter/material.dart';
import 'package:tailbytes/screens/LoginPage.dart';
import 'package:tailbytes/constants/constantvalues.dart';
import 'package:tailbytes/widgetstore/carouselLogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController loginName = TextEditingController();
  TextEditingController loginPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Padding(

          padding: EdgeInsets.all(10),
          child: ListView(

            children: <Widget>[
              Container(
                height: 300,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/images/allpets2.png'),
                      fit: BoxFit.fitWidth)
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                width: 200,
                child:TextField(
                  controller: loginName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: 'Username',
                    focusColor: Colors.white
                  )
                )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child:TextField(
                      controller: loginPass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      )
                  )
              ),
              SizedBox(height: 200),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.all(10),
                child: Text('Tailsy',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 70),),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

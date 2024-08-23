import 'dart:async';

import 'package:bricksnmix/Screens/Account_Screen.dart';
import 'package:bricksnmix/Screens/account_type.dart';
import 'package:bricksnmix/Screens/login.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Splash extends StatefulWidget {
   Splash() ;

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    AccountType()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 110, 57),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

          Image.asset('assets/bricksnmixlogo-removebg-preview.png')
        ],),
      ),
    );
  }
}

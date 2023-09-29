import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/pages/homepage.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      body:Padding(
        padding: const EdgeInsets.fromLTRB(120,0,50,0),
        child: Column(
          children: [
            SizedBox(
              width: 35.0,
              height: 350.0,
            ),
            Text(
              "OROM",
              style: TextStyle(fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color:Colors.white),
            ),
            Text(
              "Tanisha Pahwa",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Colors.white60),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:to_do_app/pages/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/pages/splash.dart';

void main() async {

  //init the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('myBox');


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
      theme: ThemeData(primarySwatch:Colors.purple,
        unselectedWidgetColor: Colors.white70,
      ),
    );
  }
}
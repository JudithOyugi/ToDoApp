import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:todo_app/pages/homepage.dart';

void main() async {
  //init the hive
 await Hive.initFlutter();

 //open a box
 // ignore: unused_local_variable
 var box = await Hive.openBox('todoBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

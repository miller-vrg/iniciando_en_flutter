import 'package:flutter/material.dart';
import 'package:nuevo_reto/src/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto platzi',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "DESIGNERS", 
            style: TextStyle( fontSize:  20),
          ),
          centerTitle: true,
        ),
        body: Home(),
    ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'componentes',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
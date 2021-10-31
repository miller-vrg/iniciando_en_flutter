import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto_plazi/src/platzi_trips.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); //oculta la barra de navegacion
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: PlatziTrips()
    );
  }
}


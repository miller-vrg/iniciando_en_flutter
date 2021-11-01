import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/platzi_trips_cupertino.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]); //oculta la barra de navegacion
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BarraCupertino(),
      //home: PlatziTrips() // esta clase mustra una barra normal de android
    );
  }
}

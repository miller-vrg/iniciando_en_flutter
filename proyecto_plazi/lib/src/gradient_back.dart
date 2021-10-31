import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{

  String titu;

  GradientBack({this.titu="Anime"});

  @override
  Widget build(BuildContextcontext){

    return Container(
height: 360,
decoration: BoxDecoration(
  gradient:  LinearGradient(
    colors: [
      Colors.red.shade900,
      Colors.black,
    ],
    begin: FractionalOffset(0.2,0.0),
    end: FractionalOffset(0.7,0.5),
    stops: [0.0,1.9], //orientación
    tileMode: TileMode.clamp, //busca un colo si no carga
  ),
),
child: Text(
  titu,
  style: TextStyle(
    color:  Colors.white,
    fontFamily: "Arvo",
    fontSize: 30,
    fontWeight: FontWeight.bold
  )
),
alignment: Alignment(-0.9,-0.6),
    );
  }
}

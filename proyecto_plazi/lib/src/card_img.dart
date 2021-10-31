import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/floating_action_button_green.dart';

class CardImg extends StatelessWidget{

String ruta;
CardImg({this.ruta = "assets/img/monky.jpg"});

@override
Widget build(BuildContext context){

  final card = Container(
    height:  350.0,
    width: 250.0,
    margin: EdgeInsets.only(
      top: 80.0,
      left: 20.0,
    ),
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(ruta),
      ),
       borderRadius: BorderRadius.all(Radius.circular(10.0)),
       shape: BoxShape.rectangle,
       boxShadow: <BoxShadow>[
       BoxShadow(
        color: Colors.black87,
        blurRadius: 15.0,
        offset: Offset(0.0,7.0),

       ),
         
       ]
    ),
  );

  return Stack(
    alignment: Alignment(0.7, 1.1),
    children: <Widget> [
      card,
      FloatingActionButtonGren(),
      ]
    );
}


}
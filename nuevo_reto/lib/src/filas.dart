import 'package:flutter/material.dart';

class Filas extends StatelessWidget{

final String ruta;
final String name;
final String info;

Filas({ this.ruta = "assets/img/usuario.png",this.name = "Anonimous",this.info = "Sin experiencia"});

@override
Widget build(BuildContext context){

  final texto = Column(
children: <Widget>[

  Text(name + "\n", style: TextStyle( fontWeight: FontWeight.w900)),
  Text(info, style: TextStyle( fontWeight: FontWeight.w400))

],

  );

final photo = Container(

margin: EdgeInsets.only(

  top: 20.0,
  left: 20.0,

),
height: 70.0,
width: 70.0,
decoration: BoxDecoration(

shape: BoxShape.circle,
image: DecorationImage(fit: BoxFit.cover, image: AssetImage(ruta))
),

);

final message = Container(

  margin: EdgeInsets.only(
  top: 30,    
  ),

  child: Icon( Icons.message, color: Colors.blue.shade400),

);

return Row(

  children: <Widget>[

    photo,
    texto,
    Expanded(child: message),

  ]

);
//return null;
}
}
import 'package:flutter/material.dart';
import 'package:nuevo_reto/src/filas.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){
  return Column(

    children: <Widget>[

       ListView(
       children: <Widget> [
         Filas( ruta: "assets/img/monky.jpg",name: "Miler Vargas Mola",info: "Experiencia: 7 años"),
         Divider(),
          Filas( ruta: "assets/img/monky2.jpg",name: "Monky D. Luffy",info: "Experiencia: 8 años"),
          Divider(),
           Filas( ruta: "assets/img/zoro.jpg",name: "Jose Vanegas Peréz",info: "Experiencia: 6 años"),
           Divider(),
            Filas( ruta: "assets/img/monky3.jpg",name: "Maria Vasquez Fuentes",info: "Experiencia: 4 años"),
            Divider(),
             Filas( ruta: "assets/img/zoro2.jpg",name: "Ana Peréz Muños",info: "Experiencia: 5 años"),
         ]
       ), 
    ],

  );
  }
}


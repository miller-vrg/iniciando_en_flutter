import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/description_place.dart';
import 'package:proyecto_plazi/src/header.dart';
import 'package:proyecto_plazi/src/review_list.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  final int star = 3;
  final String name = "Mokey Di Luffy" ;
  final String des = '' +
 'Es el capitán de la tripulación pirata conocida como los Piratas ' + 
'de Sombrero de Paja, fundada por él mismo para cumplir su sueño de ' +
'encontrar el One Piece. Es originario del East Blue. Su recompensa' +
 'es de1.500.000.000. Forma parte de los llamados '+
'"La Peor Generación"; piratas cuya infamia es bien conocida por el mundo.\n\n' +

'Su principal motivación en la serie es convertirse en el Rey de '+
'los Piratas encontrando el One Piece (tesoro dejado en el lugar más  ' +
'haya de la nada, por el pirata Gol D. Roger), una tarea que continúa ' +
'sin importar lo que le oponga resistencia, ya que nunca se rinde, sin ' +
'importar el peligro o el obstáculo que tenga enfrente. Principalmente ' +
'la serie One Piece se enfoca en las aventuras de Luffy y su tripulación ' +
'a través del Grand Line. Aunque comúnmente es torpe e imprudente, ' +
 'se pone serio cuando alguien se encuentra en peligro, siendo alguien '+
'de temer, especialmente si es su tripulación, a los que considera su familia.';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); //oculta la barra de navegacion
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // body:  DescriptionPlace(name: name,des: des,start: star),
       body: Stack(
         children: <Widget>[
           
           ListView(
             children: <Widget>[
               DescriptionPlace( name: name,des: des ),
               ReviewList()
             ]

           ),
          Header()
         ],
       ),
       
      ),
    );
  }
}


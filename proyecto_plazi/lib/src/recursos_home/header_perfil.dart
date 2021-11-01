import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/recursos_home/botones_perfil.dart';
import 'package:proyecto_plazi/src/recursos_home/gradient_perfil.dart';
import 'package:proyecto_plazi/src/recursos_home/review_perfil.dart';

class HeaderPerfil extends StatelessWidget{
  final String titu;

  @override
  Widget build(BuildContext context){
    return Stack(
      alignment: Alignment(0.0,0.3),
      children: <Widget> [
         GradientPerfil(),
        Column(
          
       children: <Widget>[ 
        
        new ReviewPerfil(
          name: "Miler Vargas Mola", 
          detalles:"Amante del anime y la tecnologia",
          usuario1:"assets/img/usuario1.jpg"),
        BotonesPerfil(),
        

      ],
        ),
      ]
    );
  }

  HeaderPerfil({ this.titu = "Perfil" });

}

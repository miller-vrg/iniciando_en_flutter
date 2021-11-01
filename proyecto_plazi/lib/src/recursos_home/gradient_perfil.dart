import 'package:flutter/material.dart';

class GradientPerfil extends StatelessWidget{
  final String titu;

  @override
  Widget build(BuildContext context){
    return Container(

      height: 380.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
          Colors.red.shade500,
          Colors.black,

          ],

          begin: FractionalOffset( 0.2, 0.0 ),
         end: FractionalOffset( 0.7, 0.5 ),
          stops: [ 0.0, 2.9 ],
          tileMode: TileMode.clamp
          )
      ),
      child: Text( 
        titu,
        style: TextStyle( 
          color: Colors.white,
          fontSize: 28, 
          fontFamily: "Arvo",
          fontWeight: FontWeight.bold ) 
          ),
          alignment: Alignment(-0.9,-0.6),
    );
  }

  GradientPerfil({ this.titu = "Perfil" });

}
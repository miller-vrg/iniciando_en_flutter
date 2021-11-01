
import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/recursos_home/review.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Column(
      children: <Widget>[
        new Review(name: "Miler Vargas Mola", detalles:"6 vista 6 fotos", comen:"Un lector y amigo",usuario1:"assets/img/monky2.jpg"),
        new Review(name: "Marco Diaz Moralez", detalles:"3 vista 2 fotos", comen:"Un lector más", usuario1: "assets/img/monky.jpg",),
        new Review(name: "Javier Herrera Manjares", detalles:"3 vista 5 fotos", comen:"Un lector y amigo",usuario1: "assets/img/jhm.jpg"),
        new Review(name: "Jose Morales Peréz", detalles:"6 vista 6 fotos", comen:"Un lector",usuario1: "assets/img/monky3.jpg"),
        new Review(name: "Maria Vanegas Vallestas", detalles:"4 vista 10 fotos", comen:"Un lector y amiga",usuario1: "assets/img/zoro2.jpg"),
        new Review(name: "Mafe Vanegas Peréz", detalles:"20 vista 10 fotos", comen:"Un lector y critico",usuario1: "assets/img/zoro.jpg"),
      ]
    );
  }
}
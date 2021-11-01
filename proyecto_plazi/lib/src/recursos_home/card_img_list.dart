import 'package:flutter/material.dart';
import 'card_img.dart'; //Class propia

class CardImgList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430.0,
      child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImg(),
            CardImg(ruta: "assets/img/zoro.jpg"),
            CardImg(ruta: "assets/img/monky2.jpg"),
            CardImg(ruta: "assets/img/monky3.jpg"),
            CardImg(ruta: "assets/img/zoro2.jpg"),
            CardImg(ruta: "assets/img/monky2.jpg"),
          ]),
    );
  }
}

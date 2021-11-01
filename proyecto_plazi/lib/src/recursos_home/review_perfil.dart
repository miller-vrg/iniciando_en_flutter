import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReviewPerfil extends StatelessWidget {

  String name;
  String detalles;
  final usuario1;

ReviewPerfil({this.name = "Sin nombre",this.detalles = " ", this.usuario1 = "assets/img/usuario.png"});

  @override
  Widget build(BuildContext context) {
  
    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Row(
        children: <Widget>[
        Text(
        detalles,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo",
          fontSize: 15.0,
          color: Colors.white60,
        ),
        
        ),
         SizedBox(width: 10.0),
        ],
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo", 
          fontSize: 20.0, 
          fontWeight: FontWeight.bold,
          color: Colors.white),
      ),
    );

    final UserDetalles = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(usuario1),
        ),
      ),
    );


 //________________________________________________

    return Row(
      children: <Widget>[photo, UserDetalles],
    );
  }
}

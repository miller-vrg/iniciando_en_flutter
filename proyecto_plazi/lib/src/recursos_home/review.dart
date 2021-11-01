import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Review extends StatelessWidget {

  String name;
  String detalles;
  String comen;
  final usuario1;

Review({this.name = "Sin nombre",this.detalles = " ",this.comen = " ", this.usuario1 = "assets/img/usuario.png"});

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
      top: 3.0,
      ),
      child: Icon(
        Icons.star,
      color: Color(0xFFF2C611)
      ),
      
    );

        final star_borde = Container(
      margin: EdgeInsets.only(
      top: 3.0,
      ),
      child: Icon(
        Icons.star_border,
      color: Color(0xFFF2C611)),
      
    );

            final star_half = Container(
      margin: EdgeInsets.only(
      top: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611)
        ),
      
    );
   
    final userComent = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
     
      child: Row(
       children: <Widget>[
         Text(
        comen,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
       ),

         ),
        ],    
       ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 30.0,
      ),
      child: Row(
        children: <Widget>[
        Text(
        detalles,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
        
        ),
         SizedBox(width: 10.0),
        star,
        star,
        star,
        star_half,
        star_borde
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
        style: TextStyle(fontFamily: "Arvo", fontSize: 20.0),
      ),
    );

    final UserDetalles = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComent,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
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

import 'package:flutter/widgets.dart';

class Review extends StatelessWidget {
  String name = "Miler Vargas Mola";
  String detalles = "6 vista 6 fotos";
  String comen = "Un viajero y amigo";
  final usuario1 = "assets/img/usuario1.jpg";

  String name2 = "Javier Herrera Manjares ";
  String detalles2 = "6 vista 6 fotos";
  String comen2 = "Un viajero y amigo";
  final usuario2 = "assets/img/jhm.jpg";

  @override
  Widget build(BuildContext context) {
   
    final userComent = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comen,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        detalles,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
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

  final userComent2 = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comen2,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo2 = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        detalles,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Arvo",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userName2 = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name2,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Arvo", fontSize: 20.0),
      ),
    );

    final UserDetalles2 = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName2,
        userInfo2,
        userComent2,
      ],
    );

    final photo2 = Container(
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
          image: AssetImage(usuario2),
        ),
      ),
    );


    final user1 = Row(
      children: <Widget>[photo, UserDetalles],
    );

      final user2 = Row(
      children: <Widget>[photo2, UserDetalles2],
    );

          final lista = Column(
      children: <Widget>[user1,user1, user2,user1,user2,user1,user2, user2,user1,user2,user1,user2,user1, user2,user1,user2,user1,user2,user1, user2,user1,user2,user1,user2],
    );

    return lista;
  }
}

import 'package:flutter/material.dart';

class BotonesPerfil extends StatelessWidget {
  final etiqueta = Container(
          height: 60,
      width: 60,
    margin: EdgeInsets.only(
      top: 30,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30)

    ),
      child: Icon(
    Icons.bookmark_add_outlined,
  ));

  final regalo = Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(30)),
      child: Icon(
        Icons.card_giftcard_outlined,
      ));

  final mas = Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Icon(
        Icons.add_outlined,
      ));

  final mensaje = Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(30)),
      child: Icon(Icons.message));

  final user = Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(30)),
      child: Icon(
        Icons.person,
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          right: 30.0,
          left: 30.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 20.0),
            etiqueta,
            SizedBox(width: 20.0),
            regalo,
            SizedBox(width: 20.0),
            mas,
            SizedBox(width: 20.0),
            mensaje,
            SizedBox(width: 20.0),
            user,
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'button.dart';//class propia

class DescriptionPlace extends StatelessWidget {
  String name;
  String des;


  DescriptionPlace({this.name = "", this.des = ""});

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
        margin: EdgeInsets.only(
          top: 453.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star_half,
          color: Color(0xFFF2C611),
        ));

    final star_borde = Container(
        margin: EdgeInsets.only(
          top: 453.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star_border,
          color: Color(0xFFF2C611),
        ));

   final star = Container(
        margin: EdgeInsets.only(
          top: 453.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star,
          color: Color(0xFFF2C611),
        ));

    final message = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
       
      child: Text(
        des,
          style: TextStyle(
            fontFamily: "BreeSerif",
            fontSize: 20.0,
          )),
    );

    final title_start = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 450.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(name,
              style: TextStyle(
                fontFamily: "BreeSerif",
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left),
        ),
        Row(children: <Widget>[
          star,
          star,
          star,
          star,
          star,
        ]),
      ],
    );

   return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: <Widget>[
      title_start,
       message,
       Botton()
       //ReviewList()
       ]
       );


  }
}

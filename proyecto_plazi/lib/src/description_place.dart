
import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/review.dart';

class DescriptionPlace extends StatelessWidget{

String name;
String des;
int start;

DescriptionPlace({ this.name = "",this.des = "",this.start = 0 });

@override
Widget build(BuildContext context){

  final star_half = Container(
margin: EdgeInsets.only(
top: 323.0,
right: 3.0,
),
child: Icon(
  Icons.star_half,
  color: Color(0xFFF2C611),
)
);

  final star_borde = Container(
margin: EdgeInsets.only(
top: 323.0,
right: 3.0,
),
child: Icon(
  Icons.star_border,
  color: Color(0xFFF2C611),
)
);

final star = Container(
margin: EdgeInsets.only(
top: 323.0,
right: 3.0,
),
child: Icon(
  Icons.star,
  color: Color(0xFFF2C611),
)
);

final message = Container(
margin: EdgeInsets.only(
top: 20.0,
left: 20.0,
right: 20.0,
),
child: 
Text(
  des,
style: TextStyle(
  fontFamily:  "BreeSerif",
fontSize: 20.0,
)),

);

final title_start = Row (
children: <Widget>[
  Container(

margin: EdgeInsets.only(

  top: 350.0,
  left: 20.0,
  right: 20.0,
),
child: Text(
  name,
  style: TextStyle(
    fontFamily:  "BreeSerif",
    fontSize: 30.0,
    fontWeight: FontWeight.w900,
  ),
  textAlign: TextAlign.left
),
),
Row(
children: <Widget>[
  
  star,
  star,
  star,
  star_half,
  star_borde,
  
]

),
],
);

final conte = Column(
children: <Widget>[title_start,message,Review()]


);

List <Widget> contenido = [];

contenido.add(conte);


final lista = ListView(
children: contenido,
);

return lista;
}

}
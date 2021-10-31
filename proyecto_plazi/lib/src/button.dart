import 'package:flutter/material.dart';

class Botton extends StatelessWidget{

String txt;

Botton({this.txt = "Tripulación"});

@override

Widget build(BuildContext context){


return Container(
  
margin: EdgeInsets.only(

left: 20.0,
bottom: 20.0
),

child: InkWell(
onTap: (){

ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  content: Text("Los Mugiwaras"),
));

},
child: Container(

margin: EdgeInsets.only(
top: 30.0,
left: 20.0,
right: 20.0,

),
height: 50.0, //ancho
width: 180.0,//largo
decoration:BoxDecoration(

borderRadius: BorderRadius.circular(30.0),
gradient: LinearGradient(
colors: [
Colors.red.shade900,
Colors.black,

],
begin: FractionalOffset( 0.4, 0.0 ),//posición
end: FractionalOffset(1.0, 0.6),
stops: [0.0, 0.9],
tileMode: TileMode.clamp,

),
),
child: Center(
  child: Text(
    txt,
    style: TextStyle(
      fontFamily:  "Arvo",
      color: Colors.white,
    )),
),
),
  ),
);
}

}
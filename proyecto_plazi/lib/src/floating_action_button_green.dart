import 'package:flutter/material.dart';

class FloatingActionButtonGren extends StatefulWidget{
@override
State<StatefulWidget> createState(){

  return _FloatingActionButtonGren();
}


} 

class _FloatingActionButtonGren extends State<FloatingActionButtonGren>{

bool _pressed = false;

  void accion() {
    setState((){

this._pressed = !this._pressed;

    });

    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
        content: Text("Se agrego a favoritos"),
      )
    );
    //evento
  }

    @override
  Widget build(BuildContext context) {
    return FloatingActionButton( //boton flotante
      backgroundColor: Colors.red.shade900,
      mini: true, //boton más pequeño
      tooltip: "Fav", //gesto al tener focus
      child: Icon( this._pressed?
        Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
       onPressed: accion, //no lleva ()
    );
  }

}
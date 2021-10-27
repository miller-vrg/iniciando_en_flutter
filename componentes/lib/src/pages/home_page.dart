
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
@override
Widget build( BuildContext context ){

return Scaffold(
  appBar: AppBar(

    title: Text('Componentes'),
  ),
  body: _lista(),
);
}

  Widget _lista() {

    //menuProvider.cargarData();

  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: ( context, AsyncSnapshot snapshot){

      return ListView(
        children: _listaItems( snapshot.data.toList() ),
      );

    },
    );

    //return ListView(
      //children: _listaItems(),);
  }

  List<Widget> _listaItems( List<dynamic>data ) {
  
  final List<Widget> opciones = [];

  data.forEach((opt){

    final widgetTempo = ListTile(
    title: Text( opt['texto'] ),
    leading: Icon( Icons.account_circle, color: Colors.blue),
    trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue),
    onTap: (){},
    );
    opciones..add(widgetTempo)
            ..add(Divider());

  });
  return opciones;
  }

}
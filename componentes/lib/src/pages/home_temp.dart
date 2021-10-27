import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes temp'),
        ),
        body: ListView(children:
        // _crerarItems()),
        _crearItemsCorta()),
      ),
    );
  }

 /* List<Widget> _crerarItems() {
    List<Widget> lista = List<Widget>.empty(growable: true);

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider()); // en cascada

    }
    return lista;
  }*/

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            leading: Icon( Icons.account_circle_sharp ),
            title: Text(' $item !'),
            subtitle: Text('Descripción'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),

          Divider(),
        ],
      );
    }).toList();
  }
}

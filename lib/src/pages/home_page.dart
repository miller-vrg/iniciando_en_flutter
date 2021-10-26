import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

//------------------- Widget ------------
//            StatelessWidget

class HomePage extends StatelessWidget {
  final txtStyle = new TextStyle(fontSize: 20);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        elevation: 5.5,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Ubicación
        children: <Widget>[
          Text(
            'Numero de pusaciones:',
            style: txtStyle,
          ),
          Text('\nN°: $conteo', style: txtStyle),
        ],
      )),
      backgroundColor: Color.fromRGBO(248, 239, 199, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //oyente
        child: Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //location button
    );
  }
}

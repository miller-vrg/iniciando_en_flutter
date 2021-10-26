import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _txtStyle = new TextStyle(fontSize: 20);
  int _conteo = 0;

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
            style: _txtStyle,
          ),
          Text('\nN°: $_conteo', style: _txtStyle),
        ],
      )),
      backgroundColor: Color.fromRGBO(248, 239, 199, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _conteo++;
          setState(() {});
        }, //oyente
        child: Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //location button
    );
  }
}

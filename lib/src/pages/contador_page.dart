import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _txtStyle =
      new TextStyle(fontSize: 20, color: Color.fromRGBO(255, 245, 21, 1));
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
              'Numero de pulsaciones:',
              style: _txtStyle,
            ),
            Text('\nN°: $_conteo', style: _txtStyle),
          ],
        )),
        backgroundColor: Color.fromRGBO(0, 0, 33, 20),
        floatingActionButton: _crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //location button
        );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0), //Separaciones
        FloatingActionButton(
          onPressed: _limpiar,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()), //Separaciones
        FloatingActionButton(
          onPressed: _disminuir,
          child: Icon(Icons.remove),
        ),
        SizedBox(width: 30.0), //Separaciones
        FloatingActionButton(
          onPressed: _aumentar,
          child: Icon(Icons.add),
        ),
      ],
    );
  }

  void _disminuir() {
    setState(() => _conteo--);
  }

  void _aumentar() {
    setState(() => _conteo++);
  }

  void _limpiar() {
    setState(() => _conteo = 0);
  }
}

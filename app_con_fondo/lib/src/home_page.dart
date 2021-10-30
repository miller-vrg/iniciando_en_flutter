import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text('App Con fondo'),
            centerTitle: true,
          ),
          body: Center(
            child: _cuerpo(),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false);

  Widget _cuerpo() => Stack(children: <Widget>[
        _imageFondo(),
        _texto(),
      ]);

  Widget _imageFondo() => Image(
        image: AssetImage("img/fondo.jpg"),
        height: double.infinity,
        width: double.infinity,
      );

  Widget _texto() => Center(
        child: Container(
          height: 50.0,
          color: Color.fromRGBO(0, 0, 33, 50),
          child: Center(
            child: Text('Aqui vamos!',
                style: TextStyle(fontSize: 25, color: Colors.white)),
          ),
        ),
      );
}

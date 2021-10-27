import 'package:flutter/material.dart';

//---------- Widge propios ------------------
//import 'package:contador/src/pages/home_page.dart';
import 'package:contador/src/pages/contador_page.dart';

//----------- componentes de la app ---------

class MyApp extends StatelessWidget {
  @override //modifica la clase abstract

  Widget build(context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          // child: HomePage(),
          child: ContadorPage(),
        ), //Centra el contenido y de propiedad
      );
}

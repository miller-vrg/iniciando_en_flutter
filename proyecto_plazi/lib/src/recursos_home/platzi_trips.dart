import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/pages/buscar.dart';
import 'package:proyecto_plazi/src/pages/home.dart';
import 'package:proyecto_plazi/src/pages/perfil.dart';


class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {

  int posicion = 0;
  List<Widget> lisBotones = [ Home(),Buscar(),perfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: lisBotones[posicion],
      bottomNavigationBar: Theme(

        data: Theme.of(context).copyWith(
            canvasColor: Colors.white, //pintar fondo
            primaryColor: Colors.purple //Color de iconos
            ),
            
        child: BottomNavigationBar(
          onTap:barraNavegacion,  
            currentIndex: posicion,
          items: [
            BottomNavigationBarItem(
              
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
          ],
        ),
      ),
      
    );
  }


  void barraNavegacion (int index){

    setState((){

      posicion = index;
    });
     

  }

}

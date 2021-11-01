import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:proyecto_plazi/src/pages/buscar.dart';
import 'package:proyecto_plazi/src/pages/home.dart';
import 'package:proyecto_plazi/src/pages/perfil.dart';

class BarraCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        
        tabBar: CupertinoTabBar(
          border: Border(
            top: BorderSide(style: BorderStyle.none)
          ),
          backgroundColor: Colors.white10,
          activeColor: Colors.red,
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
              icon: Icon(Icons.person_rounded),
              label: "",
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index){
          switch (index){
            case 0:
            return CupertinoTabView(builder: (BuildContext context) => Home());
            case 1:
            return CupertinoTabView(builder: ( BuildContext context) => Buscar());
            case 2:
            return CupertinoTabView(builder: (BuildContext context) => perfil());
            default:
            return CupertinoTabView(builder: (BuildContext context) => Home());
          }
        },
      ),
    );
  }
}

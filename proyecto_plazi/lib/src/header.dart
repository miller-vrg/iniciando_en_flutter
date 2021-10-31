import 'package:flutter/material.dart';
import 'package:proyecto_plazi/src/card_img_list.dart';

import 'gradient_back.dart';

class Header extends StatelessWidget{
  @override

  Widget build(BuildContext context){

    return Stack(

      children: <Widget>[
        GradientBack(),
        CardImgList()
      ],

    );
  }
}
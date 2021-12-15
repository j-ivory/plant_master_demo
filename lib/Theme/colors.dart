import 'package:flutter/material.dart';


//Defines app-wide common colors
@immutable
class AppColors {
  final darkGreen = const Color.fromRGBO(18,92,19,1);
  //final lightGreen = const Color.fromRGBO(62,124,23,1);
  //final lightGreen = Color.fromRGBO(138, 134, 53,1);
  final lightGreen = Colors.green[700];
  final orange = const Color.fromRGBO(244, 164, 66, 1);
  final gray = const Color.fromRGBO(232, 225, 217, 1);

  final background = Colors.white;//const Color.fromRGBO(232, 225, 217, 1);
  final background2 = Colors.white;
  final headerText = const Color.fromRGBO(81, 146, 89, 1);
  final bodyText = const Color.fromRGBO(6, 70, 53, 1);
  //Color(0XFFF8D320) this is a cool light green


  final MaterialColor orangeMaterial = MaterialColor(0xFFF4A442, color);

  final s_gray = const Color.fromRGBO(244, 238, 169, 1);
  final s_brown = const Color.fromRGBO(240, 187, 98, 1);
  final s_green = const Color.fromRGBO(6, 70, 53, 1);
  final s_lightGreen = const Color.fromRGBO(81, 146, 89, 1);
  
  final aux_green = const Color.fromRGBO(138, 134, 53, 1);
  final aux_beige = const Color.fromRGBO(233, 200, 145, 1);
  final aux_red = const Color.fromRGBO(174, 67, 30, 1);

  AppColors();
}

//for making a color a material color
//define a map of color opacities values from 50 to 900 with the color's rgb values
Map<int, Color> color =
{
  50:Color.fromRGBO(244, 164, 66, .1),
  100:Color.fromRGBO(244, 164, 66, .2),
  200:Color.fromRGBO(244, 164, 66, .3),
  300:Color.fromRGBO(244, 164, 66, .4),
  400:Color.fromRGBO(244, 164, 66, .5),
  500:Color.fromRGBO(244, 164, 66, .6),
  600:Color.fromRGBO(244, 164, 66, .7),
  700:Color.fromRGBO(244, 164, 66, .8),
  800:Color.fromRGBO(244, 164, 66, .9),
  900:Color.fromRGBO(244, 164, 66, 1),
};


//*******************************************************
//----------Helpful Links----------------------
//
//RGB to Hex!!!!
//https://www.shodor.org/stella2java/rgbint.html
//
//https://www.rapidtables.com/web/color/RGB_Color.html
//
//
//http://maettig.com/?page=PHP/CSS_Color_Converter
//
//*******************************************************
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ThemeText {
  static TextStyle headerLarge = TextStyle(
    fontFamily: 'Roboto_Slab',
    color: AppColors().gray, //Color.fromARGB(1, 18, 92, 19),
    fontSize: 36,
    height: 1,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headerMedium = TextStyle(
    fontFamily: 'Roboto_Slab',
    color: AppColors().gray, //Color.fromARGB(1, 18, 92, 19),
    fontSize: 24,
    height: 1,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headerSmall = TextStyle(
    fontFamily: 'Roboto_Slab',
    color: AppColors().gray, //Color.fromARGB(1, 18, 92, 19),
    fontSize: 18,
    height: 1,
    fontWeight: FontWeight.bold,
  );

  static TextStyle title = TextStyle(
    fontFamily: 'Roboto_Slab',
    color: AppColors().gray, //Color.fromARGB(1, 18, 92, 19),
    fontSize: 52,
    height: 1,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'Open_Sans',
    color: Color.fromRGBO(232, 225, 217, 1),
    fontSize: 12,
    height: 1,
    fontWeight: FontWeight.normal,
  );
}

// abstract class ThemeColors {
//   static const
// };
class CustomTheme {
  static ThemeData get lightTheme { //1
    return ThemeData( //2
        primaryColor: AppColors().darkGreen,
        scaffoldBackgroundColor: AppColors().darkGreen,
        fontFamily: 'Roboto', //3
        primarySwatch: Colors.green, //AppColors().orangeMaterial,
        buttonColor: AppColors().orange,
        buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
        accentColor: AppColors().orange,
        // buttonTheme: ButtonThemeData( // 4
        //   buttonColor: AppColors().orange,
        // )
    );
  }
}


//https://explorer.natureserve.org/api-docs/#_plant_data_model



import 'package:flutter/material.dart';
import 'package:horoscope_guide/data/product_variables.dart';

class ThemeOfProduct {
  static ThemeData themeData = ThemeData(
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(12),
      elevation: 0,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      toolbarHeight: 100,
      shape: ProductValues.sliverAppBarShape,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}

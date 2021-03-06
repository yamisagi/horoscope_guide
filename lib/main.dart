import 'package:flutter/material.dart';
import 'package:horoscope_guide/core/route_generator.dart';
import 'package:horoscope_guide/core/zodiac_list.dart';
import 'package:horoscope_guide/data/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeOfProduct.themeData,
      title: 'Horoscope Guide',
      onGenerateRoute: RouteGenerator.route,
      home: ZodiacList(),
    );
  }
}

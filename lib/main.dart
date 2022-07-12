import 'package:flutter/material.dart';
import 'package:horoscope_guide/core/zodiac_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      title: 'Material App',
      home:  ZodiacList(),
    );
  }
}

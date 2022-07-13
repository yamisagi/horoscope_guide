import 'package:flutter/material.dart';
import 'package:horoscope_guide/core/zodiac_details.dart';
import 'package:horoscope_guide/main.dart';
import 'package:horoscope_guide/model/zodiac_model.dart';

/// For smaller apps we don't need to use onGenerateRoute.
/// But it's good to have it for larger apps.
class RouteGenerator {
  static Route<dynamic>? route(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyApp());
      case '/zodiac_details':
        final args = settings.arguments as Zodiac;
        return MaterialPageRoute(
            builder: (_) => ZodiacDetails(selectedZodiac: args));

      default:
        return MaterialPageRoute(builder: (_) => const MyApp());
    }
  }
}

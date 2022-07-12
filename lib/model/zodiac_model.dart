/// Created a model to keep the zodiac information.
class Zodiac {
  final String name;
  final String date;
  final String description;
  final String splash;
  final String logo;

  Zodiac({
    required this.name,
    required this.date,
    required this.description,
    required this.splash,
    required this.logo,
  });

  /// For control debugging purposes.
  @override
  String toString() {
    return 'Zodiac{name: $name, date: $date, splash: $splash, logo: $logo}';
  }
}

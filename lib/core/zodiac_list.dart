import 'package:flutter/material.dart';
import 'package:horoscope_guide/core/zodiac_item.dart';
import 'package:horoscope_guide/data/strings.dart';
import 'package:horoscope_guide/model/zodiac_model.dart';

class ZodiacList extends StatelessWidget {
  late List<Zodiac> allItems;
  ZodiacList({super.key}) {
    allItems = createZodiacList();
  }
  final _appBar = 'Zodiac Listesi';

  @override
  Widget build(BuildContext context) {
    debugPrint(allItems.toString());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_appBar),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return ZodiacItem(zodiac: allItems[index]);
          },
          itemCount: allItems.length),
    );
  }

  /// Created a function to get the zodiac information from [strings.dart].
  List<Zodiac> createZodiacList() {
    List<Zodiac> tempList = [];
    for (int i = 0; i < 12; i++) {
      String zodiacName = Strings.BURC_ADLARI[i];
      String zodiacImage = Strings.IMG_SPLASH[i];
      String zodiacDescription = Strings.BURC_GENEL_OZELLIKLERI[i];
      String zodiacDate = Strings.BURC_TARIHLERI[i];
      String zodiacLogo = Strings.IMG_LOGO[i];
      tempList.add(Zodiac(
        name: zodiacName,
        splash: zodiacImage,
        description: zodiacDescription,
        date: zodiacDate,
        logo: zodiacLogo,
      ));
    }
    return tempList;
  }
}

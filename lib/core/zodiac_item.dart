import 'package:flutter/material.dart';
import 'package:horoscope_guide/core/zodiac_details.dart';
import 'package:horoscope_guide/model/zodiac_model.dart';

class ZodiacItem extends StatelessWidget {
  final Zodiac zodiac;
  const ZodiacItem({required this.zodiac, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 3,
          child: ListTile(
            title: Text(
              zodiac.name,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.red),
            ),
            subtitle: Text(zodiac.date),
            leading: Image.asset(
              zodiac.logo,
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ZodiacDetails(selectedZodiac: zodiac)),
              );
            },
          )),
    );
  }
}

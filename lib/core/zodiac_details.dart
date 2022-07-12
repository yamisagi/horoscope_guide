import 'package:flutter/material.dart';
import 'package:horoscope_guide/model/zodiac_model.dart';

class ZodiacDetails extends StatelessWidget {
  final Zodiac selectedZodiac;
  const ZodiacDetails({
    required this.selectedZodiac,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              selectedZodiac.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white),
            ),
            centerTitle: true,
            background: Image.asset(
              selectedZodiac.splash,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Text(
              selectedZodiac.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        )
      ],
    ));
  }
}

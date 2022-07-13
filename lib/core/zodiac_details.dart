import 'package:flutter/material.dart';
import 'package:horoscope_guide/data/product_variables.dart';
import 'package:horoscope_guide/model/zodiac_model.dart';
import 'package:palette_generator/palette_generator.dart';

class ZodiacDetails extends StatefulWidget {
  final Zodiac selectedZodiac;
  const ZodiacDetails({
    required this.selectedZodiac,
    super.key,
  });

  @override
  State<ZodiacDetails> createState() => _ZodiacDetailsState();
}

class _ZodiacDetailsState extends State<ZodiacDetails> {
  Color? _color = Colors.transparent;
  PaletteGenerator? _generator;

  /// We need setState() to update the color of the appbar.
  /// We need to call our func
  @override
  void initState() {
    super.initState();
    colorChanger();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          shape: ProductValues.sliverAppBarShape,
          backgroundColor: _color,
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              widget.selectedZodiac.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.white),
            ),
            centerTitle: true,
            background: Image.asset(
              widget.selectedZodiac.splash,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Card(
                  color: _color?.withOpacity(0.25),
                  child: Padding(
                    padding: ProductValues.textPadding,
                    child: Text(
                      widget.selectedZodiac.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }

  /// This function is used to change the color of the appbar.
  /// We used the PaletteGenerator to get the color of the image.
  void colorChanger() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage(widget.selectedZodiac.splash),
    );
    _color = _generator?.dominantColor?.color;

    /// And let setState() to update the color of the appbar.
    setState(() {});
  }
}

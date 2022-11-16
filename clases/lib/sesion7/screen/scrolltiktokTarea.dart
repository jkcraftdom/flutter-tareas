import 'package:app_sesion4/sesion7/widgets/plantillatareawidget.dart';
import 'package:app_sesion4/sesion7/widgets/plantillawidget.dart';
import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollTiktokTareaPage extends StatefulWidget {
  const ScrollTiktokTareaPage({super.key});

  @override
  State<ScrollTiktokTareaPage> createState() => _ScrollTiktokTareaPageState();
}

class _ScrollTiktokTareaPageState extends State<ScrollTiktokTareaPage> {
  late Controller controller;
  final List<dynamic> data = [
    {
      'img':
          'https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg',
      'name': 'Mojito',
      'ingredients': '23 0z Light rum - Juice of 1 Lime',
      'color': const Color(0xff59731C)
    },
    {
      'img':
          'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg',
      'name': 'Old Fashioned',
      'ingredients': '4.5 cL Bourbon - 2 dashes Angostura bitters',
      'color': Color(0xff941903)
    },
    {
      'img':
          'https://www.thecocktaildb.com/images/media/drink/nkwr4c1606770558.jpg',
      'name': 'Long Island Tea',
      'ingredients': '1/2 0z Vodka - 1/2 oz Light rum',
      'color': Color(0xff882E15)
    },
    {
      'img':
          'https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg',
      'name': 'Negromi',
      'ingredients': '1/2 0z Vodka - 1/2 oz Light rum',
      'color': Color(0xffB17A20)
    },
    {
      'img':
          'https://www.thecocktaildb.com/images/media/drink/hbkfsh1589574990.jpg',
      'name': 'Whiskey Sour',
      'ingredients': '1/2 0z Vodka - 1/2 oz Light rum',
      'color': Color(0xff5BB7B23)
    },
    {
      'img':
          'https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg',
      'name': 'Dry Martini',
      'ingredients': '1/2 0z Vodka - 1/2 oz Light rum',
      'color': Color(0xff59731C)
    },
    {
      'img':
          'https://www.thecocktaildb.com/images/media/drink/mrz9091589574515.jpg',
      'name': 'Dalquiri',
      'ingredients': '1/2 0z Vodka - 1/2 oz Light rum',
      'color': Color(0xff816F10)
    }
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbckEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbckEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bebidas'),
        centerTitle: true,
        elevation: 0,
      ),
      body: TikTokStyleFullPageScroller(
          contentSize: data.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 400),
          controller: controller,
          builder: (context, index) {
            final drink = data[index];

            return PlantillaCasaWidget(
              name: drink["name"],
              ingredients: drink["ingredients"],
              img: drink["img"],
              colorName: drink["color"],
            );
          }),
    );
  }
}

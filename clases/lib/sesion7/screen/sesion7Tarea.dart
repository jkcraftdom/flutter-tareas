import 'package:app_sesion4/sesion7/widgets/plantillatareawidget.dart';
import 'package:flutter/material.dart';

class Sesion7Tarea extends StatelessWidget {
  const Sesion7Tarea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 7 plantilla'),
        elevation: 0,
        centerTitle: true,
      ),
      body: PlantillaCasaWidget(
        img:
            'https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg',
        ingredients:
            '2-3 oz Light rum - Juice of 1 Lime - 2 tsp Sugar-  2-4 Min, Soda water',
        name: 'Mojito',
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

class AnimacionDemo extends StatefulWidget {
  const AnimacionDemo({super.key});

  @override
  State<AnimacionDemo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AnimacionDemo> {
  double _width = 70;
  double _height = 70;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacion'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
          child: AnimatedContainer(
        width: _width,
        height: _height,
        decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_alarm_sharp),
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(500).toDouble();
              _height = random.nextInt(500).toDouble();
              _color = Color.fromRGBO(random.nextInt(300), random.nextInt(300),
                  random.nextInt(300), 1);
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          backgroundColor: Colors.amber),
    );
  }
}

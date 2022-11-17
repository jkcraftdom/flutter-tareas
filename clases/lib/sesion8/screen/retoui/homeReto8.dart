import 'package:app_sesion4/sesion8/screen/retoui/reto8_1.dart';
import 'package:app_sesion4/widgetsdemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reto8UIPage extends StatelessWidget {
  const Reto8UIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reto 8'), centerTitle: true, elevation: 0),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(
                    text: 'Reto 1',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reto8First()));
                    }),
              ])),
    );
  }
}

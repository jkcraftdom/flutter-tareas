import 'package:app_sesion4/sesion9/screen/clase9flur.dart';
import 'package:app_sesion4/sesion9/screen/reto9.dart';
import 'package:app_sesion4/widgetsdemo.dart';
import 'package:flutter/material.dart';

class Home9Page extends StatelessWidget {
  const Home9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 9'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(
                    text: 'Reto',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reto9Page()));
                    }),
                ButtonWidget(
                    text: 'Clase Blur',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlurScreen()));
                    }),
                ButtonWidget(
                    text: 'Clase - Tarea',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlurScreen()));
                    }),
              ])),
    );
  }
}

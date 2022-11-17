import 'package:app_sesion4/sesion8/screen/retoui/homeReto8.dart';
import 'package:app_sesion4/widgetsdemo.dart';
import 'package:flutter/material.dart';

class Home8Page extends StatelessWidget {
  const Home8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sesion 8'), centerTitle: true, elevation: 0),
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
                              builder: (context) => const Reto8UIPage()));
                    }),
              ])),
    );
  }
}

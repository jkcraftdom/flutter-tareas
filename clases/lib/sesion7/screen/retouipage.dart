import 'package:app_sesion4/sesion7/screen/retoui/reto1.dart';
import 'package:app_sesion4/sesion7/screen/retoui/reto2.dart';
import 'package:app_sesion4/sesion7/screen/retoui/reto3.dart';
import 'package:app_sesion4/widgetsdemo.dart';
import 'package:flutter/material.dart';

class RetoUIPage extends StatelessWidget {
  const RetoUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reto UI'), centerTitle: true, elevation: 0),
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
                              builder: (context) => const RetoUI1()));
                    }),
                ButtonWidget(
                    text: 'Reto 2',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reto2UI()));
                    }),
                ButtonWidget(
                    text: 'Reto 3',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reto3UI()));
                    }),
              ])),
    );
  }
}

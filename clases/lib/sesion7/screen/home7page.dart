import 'package:app_sesion4/sesion7/screen/retouipage.dart';
import 'package:app_sesion4/sesion7/screen/scrolltiktok.dart';
import 'package:app_sesion4/sesion7/screen/scrolltiktokTarea.dart';
import 'package:app_sesion4/sesion7/screen/sesion7.dart';
import 'package:app_sesion4/sesion7/screen/sesion7Tarea.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgetsdemo.dart';

class Home7Page extends StatelessWidget {
  const Home7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sesion 7'), centerTitle: true, elevation: 0),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonWidget(
                    text: 'Clase',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sesion7()));
                    }),
                ButtonWidget(
                    text: 'Reto',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RetoUIPage()));
                    }),
                ButtonWidget(
                    text: 'Scroll',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScrollTiktokPage()));
                    }),
                ButtonWidget(
                    text: 'Plantilla',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sesion7Tarea()));
                    }),
                ButtonWidget(
                    text: 'Scroll tarea',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ScrollTiktokTareaPage()));
                    }),
              ])),
    );
  }
}

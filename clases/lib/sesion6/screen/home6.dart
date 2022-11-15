import 'package:app_sesion4/sesion6/screen/tarea6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgetsdemo.dart';
import 'clase6.dart';

class Home6Page extends StatelessWidget {
  const Home6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sesion 6'),
          centerTitle: true,
          elevation: 0,
        ),
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
                                builder: (context) => const Clase6()));
                      }),
                  ButtonWidget(
                      text: 'Reto',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tare6Page()));
                      }),
                ])));
  }
}

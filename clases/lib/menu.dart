import 'package:app_sesion4/sesion4/home4.dart';
import 'package:app_sesion4/sesion5/home5.dart';
import 'package:app_sesion4/sesion6/screen/clase6.dart';
import 'package:app_sesion4/sesion6/screen/home6.dart';
import 'package:app_sesion4/sesion7/screen/home7page.dart';
import 'package:app_sesion4/widgetsdemo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SESIONES DE CLASE'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Sesion 4',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home4Widget()));
              },
            ),
            ButtonWidget(
              text: 'Sesion 5',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage5()));
              },
            ),
            ButtonWidget(
              text: 'Sesion 6',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home6Page()));
              },
            ),
            ButtonWidget(
              text: 'Sesion 7',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home7Page()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

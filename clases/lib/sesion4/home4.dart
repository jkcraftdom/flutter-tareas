import 'package:app_sesion4/sesion4/checkswitchwidget.dart';
import 'package:app_sesion4/sesion4/emailpasswordwidge.dart';
import 'package:app_sesion4/sesion4/scroollwidget.dart';
import 'package:app_sesion4/sesion4/slidewidget.dart';
import 'package:app_sesion4/widgetsdemo.dart';
import 'package:flutter/material.dart';

class Home4Widget extends StatelessWidget {
  const Home4Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 4'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ButtonWidget(
              text: 'Email & Password',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailPassWidge()));
              }),
          ButtonWidget(
              text: 'Checkbox - Switch',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckBoxWidget()));
              }),
          ButtonWidget(
              text: 'Slider',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SlideWidget(),
                    ));
              }),
          ButtonWidget(
              text: 'Scroll - listview',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScrollWidgetPage(),
                    ));
              }),
        ]),
      ),
    );
  }
}

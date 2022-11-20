import 'package:flutter/material.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea 9'),
        centerTitle: true,
      ),
      body: const Center(
          child: TextWidget(
        text: 'Welcome!',
        isBold: true,
      )),
      drawer: const DrawerWidget(),
    );
  }
}

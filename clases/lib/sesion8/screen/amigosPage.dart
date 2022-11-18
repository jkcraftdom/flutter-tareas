import 'package:flutter/material.dart';

class AmigosPage extends StatelessWidget {
  const AmigosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: Table(
          border: TableBorder.all(
            color: Colors.white,
          ),
          children: const [
            TableRow(children: [
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
            ]),
            TableRow(children: [
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
            ]),
            TableRow(children: [
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
              Text('prueba 1'),
            ]),
          ]),
    );
  }
}

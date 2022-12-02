import 'package:demo/provider/change_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cambio = Provider.of<ChangeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: cambio.dato == false
            ? const Text('Provider')
            : const Text('Bienvenido'),
        centerTitle: true,
        actions: [
          Switch(
              value: cambio.dato,
              onChanged: ((value) {
                cambio.cambiar(value);
              })),
          IconButton(
              onPressed: () {
                cambio.btnCambiar();
              },
              icon: const Icon(Icons.add_location_alt_rounded))
        ],
      ),
      body: Stack(children: [
        SizedBox(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Visibility(
                visible: cambio.dato1,
                child: Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        Visibility(
            visible: cambio.dato1,
            child: const Center(
              child: Text(
                'Bienvenido 2022',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            )),
      ]),
    );
  }
}

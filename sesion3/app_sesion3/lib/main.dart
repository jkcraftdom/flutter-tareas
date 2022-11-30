import 'package:app_sesion3/page/animacion.dart';
import 'package:app_sesion3/page/image.dart';
import 'package:app_sesion3/page/listtile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion 3 - Tarea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sesion 3 - Tarea'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListTileDemo()));
            },
            height: 50,
            minWidth: double.infinity,
            color: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Text('Mi PC',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ImagesDemo()));
            },
            height: 50,
            minWidth: double.infinity,
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Text('Imagen favorita',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimacionDemo()));
            },
            height: 50,
            minWidth: double.infinity,
            color: Colors.orange,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const Text('Animacion',
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ]),
      ),
    );
  }
}

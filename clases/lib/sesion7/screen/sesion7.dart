import 'package:flutter/material.dart';

class Sesion7 extends StatelessWidget {
  const Sesion7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 7'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2022/11/07/17/20/city-7576853_960_720.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Titulo Principal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Subtitulo principal')
                    ],
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                const Text('41')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Column(children: const [
                      Icon(
                        Icons.call,
                        color: Colors.lightBlue,
                        size: 32,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ])),
                IconButton(
                    onPressed: () {},
                    icon: Column(children: const [
                      Icon(
                        Icons.map,
                        color: Colors.lightBlue,
                        size: 32,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ])),
                IconButton(
                    onPressed: () {},
                    icon: Column(children: const [
                      Icon(
                        Icons.share,
                        color: Colors.lightBlue,
                        size: 32,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ])),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              child: Text(
                'Flutter es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para',
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}

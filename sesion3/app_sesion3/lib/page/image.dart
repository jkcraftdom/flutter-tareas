import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(206, 218, 244, 1),
      appBar: AppBar(
        title: const Text('Imagen Favorita'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
          child: SizedBox(
        height: 600,
        width: double.infinity,
        child: FadeInImage(
          placeholder: AssetImage('assets/demo.gif'),
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2017/01/14/12/59/iceland-1979445_960_720.jpg'),
        ),
      )),
    );
  }
}

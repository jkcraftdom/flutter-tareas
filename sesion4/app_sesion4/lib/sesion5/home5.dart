import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage5 extends StatelessWidget {
  const HomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sesion 5'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Row(children: [
        Expanded(
          child: Container(
            color: Colors.red,
            height: double.infinity,
            child: const Center(
                child: Text(
              'EDAD: 27',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: const Color.fromARGB(255, 219, 174, 174),
            height: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const FadeInImage(
                            width: 200,
                            height: 260,
                            fit: BoxFit.cover,
                            placeholder: AssetImage('assets/loading.gif'),
                            image: NetworkImage(
                                'https://aquamarine-scone-acb749.netlify.app/img/foto.png'),
                          ),
                        )),
                    const Text('JHEREMY CRISTHIAN',
                        style: TextStyle(
                            color: Color.fromARGB(255, 78, 77, 77),
                            fontSize: 20)),
                    const Text('SAAVEDRA CHAVEZ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 78, 77, 77),
                            fontSize: 20)),
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

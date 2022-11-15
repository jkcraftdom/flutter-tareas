import 'package:app_sesion4/sesion6/screen/clase6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgetsdemo.dart';
import '../widgets/retobutton.dart';

class Tare6Page extends StatefulWidget {
  const Tare6Page({super.key});

  @override
  State<Tare6Page> createState() => _Tare6PageState();
}

class _Tare6PageState extends State<Tare6Page> {
  int numero = 0;

  void aumentar() {
    print('aumentar');
    setState(() {
      numero++;
    });
  }

  void disminuir() {
    setState(() {
      numero--;
    });
  }

  void resetear() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 188, 185, 226),
        title: const Text(
          'Reto 6',
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 188, 185, 226),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      child: Image.network(
                          'https://aquamarine-scone-acb749.netlify.app/img/foto.png'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text('Mi nombre:',
                      style: GoogleFonts.syneMono(fontSize: 20)),
                ),
                Text('Jheremy Cristhian',
                    style: GoogleFonts.syneMono(fontSize: 20))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text('Mi Apellido:',
                      style: GoogleFonts.syneMono(fontSize: 20)),
                ),
                Text('Saavedra Chavez',
                    style: GoogleFonts.syneMono(fontSize: 20))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                'Contador',
                style: GoogleFonts.poppins(fontSize: 24),
              ),
            ),
            Text(
              '$numero',
              style: GoogleFonts.poppins(fontSize: 24),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              child: RetoButton(
                disminuir: () => disminuir(),
                incrementar: () => aumentar(),
                reset: () => resetear(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

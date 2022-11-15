import 'package:app_sesion4/sesion6/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Clase6 extends StatefulWidget {
  const Clase6({super.key});

  @override
  State<Clase6> createState() => _Clase6State();
}

class _Clase6State extends State<Clase6> {
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
      backgroundColor: Color.fromARGB(255, 108, 181, 194),
      appBar: AppBar(
        title: Text(
          'Sesion 6',
          style: GoogleFonts.dancingScript(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contador',
              style: GoogleFonts.lato(fontSize: 48),
            ),
            Text(
              '$numero',
              style: GoogleFonts.syneMono(fontSize: 40),
            )
          ],
        ),
      ),
      floatingActionButton: CustomButtonWidget(
          disminuir: () => disminuir(),
          incrementar: () => aumentar(),
          reset: () => resetear()),
    );
  }
}

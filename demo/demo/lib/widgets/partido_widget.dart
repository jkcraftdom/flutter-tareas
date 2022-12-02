import 'package:demo/models/partido.dart';
import 'package:demo/provider/change_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class PartidoWidget extends StatelessWidget {
  final Color? color;
  final double? width;
  final String? pais1;
  final String? pais2;
  final String? nombre1;
  final String? nombre2;
  final String? horario;

  const PartidoWidget(
      {super.key,
      this.color,
      this.width,
      this.pais1,
      this.pais2,
      this.horario,
      this.nombre1,
      this.nombre2});

  @override
  Widget build(BuildContext context) {
    final cambio = Provider.of<ChangeProvider>(context);
    return InkWell(
      onTap: () {
        print('tap');
        cambio.cambiarPartido(
            Partido(nombre1!, nombre2!, horario!, pais1!, pais2!));
      },
      child: Container(
        width: width,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.network(pais1!),
                ),
                const Text('vs'),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.network(pais2!),
                ),
              ],
            ),
            Text(horario!)
          ],
        ),
      ),
    );
  }
}

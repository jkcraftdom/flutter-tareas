import 'package:demo/models/partido.dart';
import 'package:demo/provider/change_provider.dart';
import 'package:demo/widgets/hoy_widget.dart';
import 'package:demo/widgets/partido_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Partido> partidos = [
      Partido(
          'Corea del Sur',
          'Portuagal',
          '10:00 am',
          'https://cdn.pixabay.com/photo/2017/01/31/15/01/banner-2024827_960_720.png',
          'https://cdn.pixabay.com/photo/2017/01/31/15/04/banner-2024866_960_720.png'),
      Partido(
          'Ghana',
          'Uruguay',
          '10:00 am',
          'https://cdn.pixabay.com/photo/2017/01/31/14/55/banner-2024784_960_720.png',
          'https://cdn.pixabay.com/photo/2017/01/31/15/17/banner-2024972_960_720.png'),
      Partido(
          'Camerun',
          'Brasil',
          '14:00 pm',
          'https://cdn.pixabay.com/photo/2017/01/31/14/48/banner-2024718_960_720.png',
          'https://cdn.pixabay.com/photo/2017/01/31/16/44/banner-2025436_960_720.png'),
      Partido(
          'Serbia',
          'Suiza',
          '14: 00 pm',
          'https://cdn.pixabay.com/photo/2017/01/31/15/12/banner-2024932_960_720.png',
          'https://cdn.pixabay.com/photo/2016/03/31/17/31/flag-1293703_960_720.png'),
    ];

    final List<Color> colors = [
      Colors.green,
      Colors.orange,
      Colors.blue,
      Colors.white
    ];

    final cambio = Provider.of<ChangeProvider>(context);

    final hoy = partidos[0];

    return Scaffold(
      appBar: AppBar(
        title: cambio.dato == false
            ? const Text('Partidos de hoy')
            : const Text('Bienvenido'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                cambio.btnCambiar();
              },
              icon: const Icon(Icons.timer))
        ],
      ),
      body: Stack(children: [
        SizedBox(
          child: ListView.builder(
            itemCount: partidos.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final partido = partidos[index];
              final color = colors[index];

              return PartidoWidget(
                color: color,
                width: 200,
                pais1: partido.urlPais1,
                pais2: partido.urlPais2,
                nombre1: partido.pais1,
                nombre2: partido.pais2,
                horario: partido.horario,
              );
            },
          ),
        ),
        Visibility(visible: cambio.dato1, child: HoyPartido()),
      ]),
    );
  }
}

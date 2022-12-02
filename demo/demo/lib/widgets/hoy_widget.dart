import 'package:animate_do/animate_do.dart';
import 'package:demo/provider/change_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HoyPartido extends StatelessWidget {
  const HoyPartido({super.key});

  @override
  Widget build(BuildContext context) {
    final cambio = Provider.of<ChangeProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 150,
        color: Color.fromARGB(59, 214, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Column(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.network(cambio.hoy?.urlPais1 ??
                        'https://cdn.pixabay.com/photo/2012/04/13/12/39/south-32234_960_720.png'),
                  ),
                  Text(
                    cambio.hoy?.pais1 ?? 'Corea del sur',
                  ),
                ],
              ),
              const Text('VS'),
              Column(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.network(cambio.hoy?.urlPais2 ??
                        'https://cdn.pixabay.com/photo/2012/04/10/23/11/portugal-26886_960_720.png'),
                  ),
                  Text(cambio.hoy?.pais2 ?? 'Portugal'),
                ],
              ),
            ]),
            Text(cambio.hoy?.horario ?? '10:00 am'),
          ],
        ),
      ),
    );
  }
}

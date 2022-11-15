import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function incrementar;
  final Function disminuir;
  final Function reset;

  const CustomButtonWidget(
      {super.key,
      required this.incrementar,
      required this.disminuir,
      required this.reset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 12, 18, 48),
          heroTag: const Text('btn1'),
          tooltip: 'Incrementar',
          onPressed: () => incrementar(),
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 162, 168, 199),
          heroTag: const Text('btn2'),
          tooltip: 'Reseteo',
          onPressed: () => reset(),
          child: const Icon(
            Icons.restore,
            color: Color.fromARGB(255, 12, 18, 48),
          ),
        ),
        FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 12, 18, 48),
          heroTag: const Text('btn3'),
          tooltip: 'Disminuir',
          onPressed: () => disminuir(),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}

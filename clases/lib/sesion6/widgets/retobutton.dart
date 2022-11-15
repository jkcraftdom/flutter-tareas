import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RetoButton extends StatelessWidget {
  final Function incrementar;
  final Function disminuir;
  final Function reset;

  const RetoButton(
      {super.key,
      required this.incrementar,
      required this.disminuir,
      required this.reset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          onPressed: () => incrementar(),
          height: 40,
          minWidth: 20,
          color: const Color.fromARGB(255, 57, 52, 128),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        MaterialButton(
          onPressed: () => reset(),
          height: 40,
          minWidth: 20,
          color: Color.fromARGB(255, 82, 76, 143),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.restore,
            color: Colors.white,
          ),
        ),
        MaterialButton(
          onPressed: () => disminuir(),
          height: 40,
          minWidth: 20,
          color: const Color.fromARGB(255, 57, 52, 128),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            Icons.remove,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

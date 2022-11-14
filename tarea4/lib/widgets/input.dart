import 'package:flutter/material.dart';
import 'package:tarea_4/pages/login.dart';
import 'package:tarea_4/widgets/space.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final bool? isPassword;

  const InputWidget(
      {super.key,
      this.label = '',
      this.hintText = '',
      this.keyboardType = TextInputType.text,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              '*',
              style: TextStyle(color: Colors.red),
            )
          ],
        ),
        // ignore: prefer_const_constructors
        SpaceWidget(),
        TextFormField(
            style: const TextStyle(fontSize: 20),
            keyboardType: keyboardType,
            obscureText: isPassword!,
            decoration: InputDecoration(
                suffix: isPassword!
                    ? const Icon(
                        Icons.visibility,
                        size: 20,
                      )
                    : null,
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 20.0),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xff284BC1))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                    borderSide:
                        const BorderSide(width: 2, color: Color(0xffD3D3D3))),
                hintText: hintText))
      ],
    );
  }
}

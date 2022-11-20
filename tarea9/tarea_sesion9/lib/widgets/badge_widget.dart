import 'package:flutter/material.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class BadgeWidget extends StatelessWidget {
  final String text;
  final Color color;

  const BadgeWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
      ),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(14)),
      child: TextWidget(
        text: text,
        size: 18,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final bool? isBold;

  const TextWidget({
    Key? key,
    required this.text,
    this.size = 24,
    this.color = Colors.black54,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: isBold! ? FontWeight.bold : FontWeight.normal),
    );
  }
}

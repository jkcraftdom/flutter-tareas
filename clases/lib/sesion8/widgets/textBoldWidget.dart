import 'package:flutter/material.dart';

class TextBoldWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final double? size;

  const TextBoldWidget({
    super.key,
    required this.text,
    this.style = const TextStyle(),
    this.color = const Color(0xff333333),
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle styleDefault =
        TextStyle(fontWeight: FontWeight.bold, fontSize: size, color: color);

    TextStyle newStyle = styleDefault.merge(style);

    return Text(
      text,
      style: newStyle,
    );
  }
}

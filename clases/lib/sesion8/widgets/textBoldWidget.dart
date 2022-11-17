import 'package:flutter/material.dart';

class TextBoldWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const TextBoldWidget(
      {super.key, required this.text, this.style = const TextStyle()});

  @override
  Widget build(BuildContext context) {
    TextStyle styleDefault = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xff333333));

    TextStyle newStyle = styleDefault.merge(style);

    return Text(
      text,
      style: newStyle,
    );
  }
}

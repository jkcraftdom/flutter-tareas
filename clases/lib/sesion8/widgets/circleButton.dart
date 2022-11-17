import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;

  const CircleButtonWidget(
      {super.key,
      required this.icon,
      this.color = const Color(0xff626463),
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: color,
      ),
      style: IconButton.styleFrom(backgroundColor: backgroundColor),
    );
  }
}

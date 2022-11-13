import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color bg;
  final Color color;
  final String label;

  const ButtonWidget(
      {super.key, required this.color, required this.label, required this.bg});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 52,
      minWidth: double.infinity,
      elevation: 0,
      color: bg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(fontSize: 18, color: color),
      ),
    );
  }
}

class ButtonIconWidget extends StatelessWidget {
  final Color bg;
  final Color color;
  final String label;
  final String icon;

  const ButtonIconWidget(
      {super.key,
      required this.bg,
      required this.color,
      required this.label,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith((states) => 0),
          backgroundColor: MaterialStateProperty.resolveWith((states) => bg)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          icon,
          height: 20,
          width: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18, color: color),
        )
      ]),
    );
  }
}

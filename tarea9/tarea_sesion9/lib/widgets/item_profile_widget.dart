import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class ItemProfileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ItemProfileWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaIcon(
                icon,
                color: Colors.black54,
                size: 28,
              ),
              const VerticalDivider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(text: title, size: 16, color: Colors.black45),
                  const SizedBox(
                    height: 8,
                  ),
                  TextWidget(text: subtitle, size: 18, color: Colors.black54),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 20,
          margin: const EdgeInsets.only(top: 20),
          child: const DividerWidget(),
        ),
      ],
    );
  }
}

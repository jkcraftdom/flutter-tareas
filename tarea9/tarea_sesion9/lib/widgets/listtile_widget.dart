import 'package:flutter/material.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final bool? useBadge;
  final Color? colorBadge;
  final Function? onTap;

  const ListTileWidget({
    Key? key,
    required this.title,
    this.subtitle = '',
    required this.icon,
    this.useBadge = false,
    this.colorBadge = Colors.indigo,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => {
        if (onTap != null) {onTap!()}
      },
      minLeadingWidth: 10,
      leading: Icon(
        icon,
        color: Colors.black54,
        size: 28,
      ),
      title: TextWidget(
        text: title,
        size: 18,
        isBold: true,
        color: Colors.black54,
      ),
      trailing: useBadge!
          ? BadgeWidget(
              text: subtitle!,
              color: colorBadge!,
            )
          : TextWidget(
              text: subtitle!,
              size: 17,
              color: Colors.black45,
            ),
    );
  }
}

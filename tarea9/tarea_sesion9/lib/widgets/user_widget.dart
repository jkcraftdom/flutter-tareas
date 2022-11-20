import 'package:flutter/material.dart';
import 'package:tarea_sesion9/preferences/preferences.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class UserWidget extends StatelessWidget {
  final String username;
  final String profession;
  final String img;
  final Axis? direction;

  const UserWidget({
    Key? key,
    required this.username,
    required this.profession,
    required this.img,
    this.direction = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction!,
      crossAxisAlignment: direction == Axis.vertical
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.center,
      mainAxisAlignment: direction == Axis.vertical
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        Container(
          width: 72,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3)),
          child: (img == '')
              ? const CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.photo,
                    size: 50,
                  ),
                )
              : CircleAvatar(radius: 36, backgroundImage: NetworkImage(img)),
        ),
        const VerticalDivider(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: direction == Axis.vertical
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: username,
              isBold: true,
              size: 18,
              color: Colors.white,
            ),
            TextWidget(
              text: profession,
              size: 16,
              color: Colors.white60,
            )
          ],
        )
      ],
    );
  }
}

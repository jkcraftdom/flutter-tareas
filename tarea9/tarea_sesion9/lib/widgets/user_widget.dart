import 'package:flutter/material.dart';
import 'package:tarea_sesion9/preferences/preferences.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class UserWidget extends StatelessWidget {
  final String username;
  final String profession;
  final String img;
  final Axis? direction;
  final double? radiusImage;

  const UserWidget({
    Key? key,
    required this.username,
    required this.profession,
    required this.img,
    this.direction = Axis.horizontal,
    this.radiusImage = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double increment = direction == Axis.vertical ? 40 : 22;

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
          width: (radiusImage! + increment),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3)),
          child: (img == '')
              ? CircleAvatar(
                  radius: radiusImage,
                  child: Icon(
                    Icons.photo,
                    size: radiusImage,
                  ),
                )
              : CircleAvatar(
                  radius: radiusImage, backgroundImage: NetworkImage(img)),
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextWidget(
                text: profession,
                size: 16,
                color: Colors.white60,
              ),
            )
          ],
        )
      ],
    );
  }
}

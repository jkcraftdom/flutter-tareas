import 'package:flutter/material.dart';
import 'package:tarea_sesion9/preferences/preferences.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class ChildBottomWidget extends StatelessWidget {
  const ChildBottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UserWidget(
          username: Preferences.username,
          profession: Preferences.profession,
          img: Preferences.img,
          direction: Axis.vertical,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextWidget(
                  text: 'Country',
                  color: Colors.white70,
                  size: 16,
                  isBold: true,
                ),
                const VerticalDivider(
                  width: 5,
                ),
                TextWidget(
                  text: Preferences.country,
                  color: Colors.white,
                  size: 17,
                ),
                const VerticalDivider(
                  width: 50,
                  thickness: 1,
                  color: Colors.white,
                ),
                const TextWidget(
                  text: 'Gender',
                  color: Colors.white70,
                  size: 16,
                  isBold: true,
                ),
                const VerticalDivider(
                  width: 5,
                ),
                TextWidget(
                  text: Preferences.genderText,
                  color: Colors.white,
                  size: 17,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

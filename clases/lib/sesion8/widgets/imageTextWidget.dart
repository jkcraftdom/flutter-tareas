import 'package:app_sesion4/sesion8/widgets/ImageWidget.dart';
import 'package:app_sesion4/sesion8/widgets/textBoldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageTextWidget extends StatelessWidget {
  final String url;
  final String text;

  const ImageTextWidget({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ImageWidget(
            url: url,
            height: 50,
            width: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          TextBoldWidget(
            text: text,
          )
        ],
      ),
    );
  }
}

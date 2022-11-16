import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTitleWidget extends StatelessWidget {
  final String url;
  final String title;
  final double? widthText;
  final EdgeInsets? margin;

  const IconTitleWidget(
      {super.key,
      required this.url,
      required this.title,
      this.widthText = 70,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Image.network(url),
          ),
          SizedBox(
            width: widthText,
            child: Text(title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

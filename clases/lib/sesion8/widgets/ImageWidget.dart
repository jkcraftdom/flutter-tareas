import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageWidget extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;

  const ImageWidget(
      {super.key, required this.url, this.height = 50, this.width = 50});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: width,
        height: height,
        child: Image.network(url, fit: BoxFit.cover),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SpaceWidget extends StatelessWidget {
  final double? height;

  const SpaceWidget({
    super.key,
    this.height = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

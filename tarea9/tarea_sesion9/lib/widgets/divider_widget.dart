import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Divider(
        indent: 10,
        height: 4,
        endIndent: 10,
        thickness: 1,
      ),
    );
  }
}

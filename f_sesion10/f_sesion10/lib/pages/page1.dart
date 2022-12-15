import 'package:f_sesion10/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../custom/page_effect.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
        centerTitle: true,
      ),
      backgroundColor: Colors.amber,
      body: Center(
          child: MaterialButton(
        height: 50,
        minWidth: 200,
        color: Colors.orange,
        onPressed: () {
          // Navigator.pushNamed(context, '/page2');
          PageEffect(
              child: const Page2(),
              context: context,
              animation: AnimationType.fadeIn,
              duration: const Duration(milliseconds: 1000),
              replacement: false);
        },
        child: const Text('Cambiar'),
      )),
    );
  }
}

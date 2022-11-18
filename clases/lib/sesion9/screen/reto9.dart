import 'package:app_sesion4/sesion8/widgets/textBoldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reto9Page extends StatelessWidget {
  const Reto9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    height: 70,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.white, width: 3)),
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: const Icon(Icons.search),
                  )
                ],
              ),
              const TextBoldWidget(
                text: 'Ready to get started?',
                color: Colors.white,
                size: 30,
              ),
              const TextBoldWidget(
                text: 'Create  your unique NFT collection',
                color: Colors.white60,
                size: 20,
              ),
              /*  const TabBar(
                controller: controller,
                tabs: [
                TextBoldWidget(
                  text: 'Create  your unique NFT collection',
                  color: Colors.white60,
                  size: 20,
                ),
                TextBoldWidget(
/*                   text: 'Create  your unique NFT collection',
                  color: Colors.white60,
                  size: 20,
                ),
                TextBoldWidget(
                  text: 'Create  your unique NFT collection',
                  color: Colors.white60,
                  size: 20,
                ), */
              ]), */
            ],
          )),
    );
  }
}

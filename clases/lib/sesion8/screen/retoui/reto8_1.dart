import 'dart:ui';

import 'package:app_sesion4/sesion8/widgets/ImageWidget.dart';
import 'package:app_sesion4/sesion8/widgets/cardWidget.dart';
import 'package:app_sesion4/sesion8/widgets/imageTextWidget.dart';
import 'package:app_sesion4/sesion8/widgets/textBoldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reto8First extends StatelessWidget {
  const Reto8First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15, bottom: 15),
        child: Column(
          children: [
            Row(
              children: [
                const ImageWidget(
                    width: 60,
                    height: 60,
                    url:
                        'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello',
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          children: const [
                            TextBoldWidget(text: 'Saber'),
                            Icon(
                              Icons.front_hand,
                              color: Colors.amber,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(174, 230, 227, 227)),
                  icon: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.mark_unread_chat_alt,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: TextBoldWidget(
                text: 'Where do you want to explore today?',
                style: TextStyle(fontSize: 30, height: 1.2),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  isDense: true,
                  fillColor: const Color.fromARGB(255, 238, 236, 236),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.white12)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.white12)),
                  hintText: 'Search Destination',
                  hintStyle:
                      const TextStyle(fontSize: 20, color: Colors.black26),
                  filled: true,
                  suffix: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.black26,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: const [
                  Expanded(child: TextBoldWidget(text: 'Choose Category')),
                  TextBoldWidget(
                    text: 'See all',
                    style: TextStyle(color: Colors.orange, fontSize: 17),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ImageTextWidget(
                      url:
                          'https://cdn.pixabay.com/photo/2018/01/31/16/12/beach-3121393_960_720.png',
                      text: 'Beach'),
                  ImageTextWidget(
                      url:
                          'https://cdn.pixabay.com/photo/2019/12/14/07/21/mountain-4694346_960_720.png',
                      text: 'Mountain'),
                  ImageTextWidget(
                      url:
                          'https://cdn.pixabay.com/photo/2017/01/31/13/18/house-2023960_960_720.png',
                      text: 'Lake'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: const [
                  Expanded(child: TextBoldWidget(text: 'Favorite places')),
                  TextBoldWidget(
                    text: 'Explore',
                    style: TextStyle(color: Colors.orange, fontSize: 17),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CardWidget(
                      rate: '4.8',
                      title: 'Diqna Mountain',
                      subtitle: 'Keykong China',
                      image:
                          'https://cdn.pixabay.com/photo/2019/07/25/17/09/camp-4363073_960_720.png'),
                  CardWidget(
                      rate: '4.2',
                      title: 'Fey Forest',
                      subtitle: 'Dhaka, Bangadlesh',
                      image:
                          'https://media.istockphoto.com/id/1405936519/es/vector/paisaje-oto%C3%B1al-monta%C3%B1a-y-tren-acuarela.jpg?s=612x612&w=is&k=20&c=areBoXRE1OgQoF6jZSw_6cdvBdJ38xYnIMVzaC_Oshw='),
                ],
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.orange,
            ),
            Icon(
              Icons.send,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.star_border,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.grey,
            ),
          ],
        ),
      )),
    );
  }
}

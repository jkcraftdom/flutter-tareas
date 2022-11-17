import 'package:app_sesion4/sesion8/widgets/textBoldWidget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String rate;

  const CardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 220,
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.orange,
                ),
                style: IconButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.white),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBoldWidget(
                text: title,
                style: const TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  TextBoldWidget(
                    text: subtitle,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                width: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 18,
                    ),
                    TextBoldWidget(
                      text: rate,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

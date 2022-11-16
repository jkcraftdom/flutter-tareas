import 'package:app_sesion4/sesion7/widgets/icontitle.dart';
import 'package:flutter/material.dart';

class Reto3UI extends StatelessWidget {
  const Reto3UI({super.key});

  @override
  Widget build(BuildContext context) {
    String text1 =
        "Interested in exploring local museums? Pick one of Coach USA's museum guided tours to learn about the past of numerous topics, nations, and families.";

    String text2 =
        "safe, reliable and convenient bus tours to get. ‘events. Say goodbye to hectic travel arrangements and rest assured as our tour. buses will be awaiting your departure.";

    String text3 =
        "‘Throughout North America, Coach USA offers safe, reliable and convenient bus tours to get you to and from multiple different sporting events.";

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "2",
                    style: TextStyle(
                        fontSize: 58,
                        color: Color(0xffD8D8D8),
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      height: 5,
                      color: const Color(0xffD8D8D8),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  'Find your tour',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3E59FB)),
                ),
              ),
              const Text(
                'Museum tours',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  text1,
                  style:
                      const TextStyle(fontSize: 16, color: Color(0xff5B5B5B)),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                color: const Color(0xff3E59FB),
                width: double.infinity,
                margin: const EdgeInsets.only(right: 20, bottom: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.star,
                          size: 40,
                          color: Colors.white,
                        ),
                        const Icon(
                          Icons.star,
                          size: 40,
                          color: Colors.white,
                        ),
                        const Icon(
                          Icons.star,
                          size: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text(
                        ' Restaurant tours',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      text2,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Text(
                'Sporting events',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Text(
                text3,
                style: const TextStyle(fontSize: 16, color: Color(0xff5B5B5B)),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

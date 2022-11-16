import 'package:app_sesion4/sesion7/widgets/icontitle.dart';
import 'package:flutter/material.dart';

class Reto2UI extends StatelessWidget {
  const Reto2UI({super.key});

  @override
  Widget build(BuildContext context) {
    String text1 =
        "Travel around America's big-hearted, musically influenced southern cities by shaking,  rattling, and rolling. Beginning in the center of country music,Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Graceland, before.continuing on to New Orleans, the heart and soul of the party.";

    String text2 =
        "You'll find alligator swamps, voodoo mysteries, and creole cuisine here, in addition to a propensity to make every day a reason to celebrate life. You will definitely. leave the south with a very full heart thanks to the warm smiles, sizable barbecues, and musical icons.";

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
                    "1",
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
              const Text(
                'Introduction',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3E59FB)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  text1,
                  style:
                      const TextStyle(fontSize: 15, color: Color(0xff5B5B5B)),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  text2,
                  style:
                      const TextStyle(fontSize: 15, color: Color(0xff5B5B5B)),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(bottom: 10),
                child: Wrap(
                  // ignore: prefer_const_literals_to_create_immutables
                  runSpacing: 20,
                  alignment: WrapAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const IconTitleWidget(
                      url:
                          "https://img.icons8.com/ios-filled/50/3E59FB/bedroom.png",
                      title: "Accommodation",
                      widthText: 130,
                      margin: EdgeInsets.only(right: 20),
                    ),
                    const IconTitleWidget(
                        url:
                            "https://img.icons8.com/dotty/80/3E59FB/map-marker.png",
                        title: "Guide",
                        widthText: 75,
                        margin: EdgeInsets.only(right: 20)),
                    const IconTitleWidget(
                        url:
                            "https://img.icons8.com/external-linector-fill-linector/64/3E59FB/external-food-self-protection-linector-fill-linector.png",
                        title: "Meals",
                        widthText: 130),
                    const IconTitleWidget(
                        url: "https://img.icons8.com/ios/50/3E59FB/bus.png",
                        title: "Transport",
                        widthText: 130,
                        margin: EdgeInsets.only(right: 20)),
                    const IconTitleWidget(
                        url:
                            "https://img.icons8.com/ios/50/3E59FB/compact-camera.png",
                        title: "Exclusive Photo",
                        widthText: 75,
                        margin: EdgeInsets.only(right: 20)),
                    const IconTitleWidget(
                      url: "https://img.icons8.com/ios/50/3E59FB/syringe.png",
                      title: "COVID-19 health & safety measures",
                      widthText: 130,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

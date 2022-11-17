import 'package:app_sesion4/sesion8/widgets/circleButton.dart';
import 'package:app_sesion4/sesion8/widgets/textBoldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Reto8SecondPage extends StatelessWidget {
  const Reto8SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topLeft,
                image: NetworkImage(
                  'https://www.renfe-sncf.com/es-es/blog/PublishingImages/curiosidades-paris-torre-eiffel/curiosidades_paris_torre_eiffel.jpg',
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircleButtonWidget(
                    icon: Icons.chevron_left,
                  ),
                  CircleButtonWidget(
                    icon: Icons.more_vert,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        TextBoldWidget(
                          text: 'FAVORITE PLACE',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.verified,
                          color: Colors.orange,
                        )
                      ],
                    ),
                    const TextBoldWidget(
                      text: 'Eifel Tower',
                      style: TextStyle(fontSize: 40),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextBoldWidget(
                            text: 'Paris, France',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black54),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const TextBoldWidget(
                            text: '36.5k+',
                            style: TextStyle(
                              fontSize: 13,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: TextBoldWidget(
                              text: 'people have explored',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black38)),
                        ),
                        SizedBox(
                          width: 147,
                          child: Stack(children: const [
                            CircleAvatar(
                              radius: 23,
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png'),
                            ),
                            Positioned(
                              left: 28,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/04/26/07/57/woman-1353825__340.png'),
                              ),
                            ),
                            Positioned(
                              left: 49,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_960_720.png'),
                              ),
                            ),
                            Positioned(
                              left: 72,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png'),
                              ),
                            ),
                            Positioned(
                              left: 95,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/04/26/07/57/woman-1353825__340.png'),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: SizedBox(
                          width: 60, child: Divider(color: Colors.black)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15, bottom: 15),
                      child: Text(
                        'La Torre Eiffel​, inicialmente llamada Tour de 300 mètres es una estructura de hierro pudelado diseñada inicialmente por los ingenieros civiles Maurice Koechlin y Émile Nouguier y construida,',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                TextBoldWidget(
                                  text: '4.8',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.arrow_downward,
                            color: Colors.black87,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const TextBoldWidget(text: "\$/. 125.00"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: TextBoldWidget(
                            text: '/Person',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black38),
                          ),
                        ),
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {},
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: TextBoldWidget(
                              text: 'Book Now',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

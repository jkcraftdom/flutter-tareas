import 'package:app_sesion4/sesion8/widgets/tiktokWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/04/03/07/30/hanukkah-2197684_960_720.jpg',
        'username': 'Jheremy'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2019/05/01/01/12/k-2so-4169866_960_720.jpg',
        'username': 'Robotin'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/08/04/15/10/pokemon-1569241_960_720.jpg',
        'username': 'Voley'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2019/11/22/18/13/flame-4645364_960_720.jpg',
        'username': 'Fire'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/08/21/03/08/luigi-2663929_960_720.jpg',
        'username': 'Mario'
      },
    ];
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            controller: controller,
            itemBuilder: (context, index) {
              final tiktok = data[index];

              return TiktokWidget(
                img: tiktok["img"],
                username: tiktok["username"],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.live_tv)),
              SizedBox(
                width: 120,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Siguiendo'),
                      Text('Para ti'),
                    ]),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          )
        ],
      )),
    );
  }
}

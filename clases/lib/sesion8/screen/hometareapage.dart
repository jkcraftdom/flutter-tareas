import 'package:app_sesion4/sesion8/widgets/instragramWidget.dart';
import 'package:app_sesion4/sesion8/widgets/tiktokWidget.dart';
import 'package:flutter/material.dart';

class HomeTareaPage extends StatelessWidget {
  const HomeTareaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/04/03/07/30/hanukkah-2197684_960_720.jpg',
        'username': 'Jheremy',
        'avatarImg':
            'https://cdn.pixabay.com/photo/2016/03/31/20/27/avatar-1295773__340.png',
        'comment': 'Nueva decoración',
        'favoritesCount': '138 mil',
        'messageCount': '745'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2019/05/01/01/12/k-2so-4169866_960_720.jpg',
        'username': 'Robotin',
        'avatarImg':
            'https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561__340.png',
        'comment': 'Nuevo modelo de robot',
        'favoritesCount': '95',
        'messageCount': ''
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/08/04/15/10/pokemon-1569241_960_720.jpg',
        'username': 'empoderada',
        'avatarImg':
            'https://cdn.pixabay.com/photo/2019/03/21/20/29/eyewear-4071870__340.jpg',
        'comment': 'Partido final del campeonato',
        'favoritesCount': '135 mil',
        'messageCount': '943'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2019/11/22/18/13/flame-4645364_960_720.jpg',
        'username': 'animal',
        'avatarImg':
            'https://cdn.pixabay.com/photo/2016/03/10/05/07/wolf-1247882__340.png',
        'comment': 'A controlar el fuego',
        'favoritesCount': '21.4 mil',
        'messageCount': '214'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/08/21/03/08/luigi-2663929_960_720.jpg',
        'username': 'maquillaje',
        'avatarImg':
            'https://cdn.pixabay.com/photo/2016/09/22/16/38/avatar-1687700__340.jpg',
        'comment': 'Colores listos',
        'favoritesCount': '581 mil',
        'messageCount': '2,328'
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
              final item = data[index];

              return InstagramWidget(
                img: item["img"],
                username: item["username"],
                avatarImg: item["avatarImg"],
                comment: item["comment"],
                favoritesCount: item["favoritesCount"],
                messageCount: item["messageCount"],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                    width: 60,
                    child: Text(
                      'Reels',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 28,
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}

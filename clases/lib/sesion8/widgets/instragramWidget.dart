import 'package:app_sesion4/sesion8/widgets/iconTextWidget.dart';
import 'package:app_sesion4/sesion8/widgets/textBoldWidget.dart';
import 'package:flutter/material.dart';

class InstagramWidget extends StatelessWidget {
  final String? img;
  final String? username;
  final String? avatarImg;
  final String? comment;
  final String? favoritesCount;
  final String? messageCount;

  const InstagramWidget(
      {super.key,
      this.img,
      this.username,
      this.avatarImg,
      this.comment,
      this.favoritesCount,
      this.messageCount});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(fit: BoxFit.fill, '$img'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundImage: NetworkImage('$avatarImg'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '$username'.toLowerCase(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                            minWidth: 70,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    color: Colors.white, width: 2)),
                            onPressed: () {},
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: const Text('Seguir'),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    '$comment',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    width: 210,
                    height: 25,
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.graphic_eq_outlined,
                          color: Colors.black87,
                          size: 20,
                        ),
                        Text(
                          'Miley Cyrus',
                          style: TextStyle(color: Colors.black87),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 1, left: 1),
                          child: TextBoldWidget(
                            text: '.',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 30),
                          ),
                        ),
                        Text(
                          'Midnight Sky',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextWidget(
                        icon: Icons.favorite_border, text: favoritesCount!),
                    IconTextWidget(
                        icon: Icons.favorite_border, text: messageCount!),
                    const Icon(
                      Icons.send_outlined,
                      size: 30,
                    ),
                    const Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2018/01/16/10/18/headphones-3085681_960_720.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

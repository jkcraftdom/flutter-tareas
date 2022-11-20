import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarea_sesion9/preferences/preferences.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:
          ThemeData(primaryIconTheme: const IconThemeData(color: Colors.white)),
      child: Scaffold(
        appBar: AppBar(
          title: const TextWidget(
            text: 'Profile',
            size: 18,
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.settings,
              ),
            )
          ],
        ),
        extendBodyBehindAppBar: true,
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 90, bottom: 10),
              margin: const EdgeInsets.only(bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(Preferences.backgroundImage),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  UserWidget(
                    username: Preferences.username,
                    profession: Preferences.profession,
                    img: Preferences.img,
                    direction: Axis.vertical,
                    radiusImage: 65,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 5.0),
                            child: TextWidget(
                              text: 'Country',
                              color: Colors.white70,
                              size: 16,
                              isBold: true,
                            ),
                          ),
                          TextWidget(
                            text: Preferences.country,
                            color: Colors.white,
                            size: 17,
                          ),
                          const VerticalDivider(
                            width: 50,
                            thickness: 1,
                            color: Colors.white,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: TextWidget(
                              text: 'Gender',
                              color: Colors.white70,
                              size: 16,
                              isBold: true,
                            ),
                          ),
                          TextWidget(
                            text: Preferences.genderText,
                            color: Colors.white,
                            size: 17,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const ItemProfileWidget(
                icon: Icons.mail,
                title: 'Email',
                subtitle: 'jsaavedra_27@hotmailcom'),
            const ItemProfileWidget(
                icon: Icons.phone, title: 'Mobile', subtitle: '+51 918866129'),
            const ItemProfileWidget(
                icon: FontAwesomeIcons.twitter,
                title: 'Twitter',
                subtitle: '@JheremyC1'),
            const ItemProfileWidget(
                icon: Icons.facebook_outlined,
                title: 'Facebook',
                subtitle: '/jheremy.saavedrachavez/'),
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tarea_sesion9/preferences/preferences.dart';
import 'package:tarea_sesion9/screen/index.dart';
import 'package:tarea_sesion9/widgets/index.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(Preferences.backgroundImage))),
                child: UserWidget(
                  username: Preferences.username,
                  profession: Preferences.profession,
                  img: Preferences.img,
                )),
            const ListTileWidget(
              icon: Icons.drafts,
              title: 'All inboxex',
              subtitle: '15',
            ),
            const DividerWidget(),
            const ListTileWidget(
              icon: Icons.mail,
              title: 'Primary',
              subtitle: '15',
            ),
            const ListTileWidget(
              icon: Icons.group,
              title: 'Social',
              subtitle: '14 new',
              useBadge: true,
              colorBadge: Color.fromARGB(255, 152, 160, 204),
            ),
            const ListTileWidget(
              icon: Icons.sell,
              title: 'Promotions',
              subtitle: '99+ new',
              useBadge: true,
              colorBadge: Color.fromARGB(255, 135, 216, 208),
            ),
            const DividerWidget(),
            const ListTile(
              title: TextWidget(
                text: 'More',
                size: 20,
                isBold: true,
                color: Colors.black87,
              ),
            ),
            ListTileWidget(
              title: 'Home',
              icon: Icons.home,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
            ),
            ListTileWidget(
              title: 'Profile',
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ));
              },
            ),
            ListTileWidget(
              title: 'Configuration',
              icon: Icons.settings,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfigScreen(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}

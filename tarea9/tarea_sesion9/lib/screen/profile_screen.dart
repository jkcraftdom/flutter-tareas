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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(260),
          child: AppBar(
            title: const TextWidget(
              text: 'Profile',
              size: 18,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.settings,
                ),
              )
            ],
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            bottom: const PreferredSize(
                preferredSize: Size.zero, child: ChildBottomWidget()),
          ),
        ),
        drawer: const DrawerWidget(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              ItemProfileWidget(
                  icon: Icons.mail,
                  title: 'Email',
                  subtitle: 'jsaavedra_27@hotmailcom'),
              ItemProfileWidget(
                  icon: Icons.phone,
                  title: 'Mobile',
                  subtitle: '+51 918866129'),
              ItemProfileWidget(
                  icon: FontAwesomeIcons.twitter,
                  title: 'Twitter',
                  subtitle: '@JheremyC1'),
              ItemProfileWidget(
                  icon: Icons.facebook_outlined,
                  title: 'Facebook',
                  subtitle: '/jheremy.saavedrachavez/'),
            ],
          ),
        )),
      ),
    );
  }
}

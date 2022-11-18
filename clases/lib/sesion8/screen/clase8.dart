import 'package:app_sesion4/sesion8/screen/amigosPage.dart';
import 'package:app_sesion4/sesion8/screen/bandejaPage.dart';
import 'package:app_sesion4/sesion8/screen/homepage.dart';
import 'package:flutter/material.dart';

class Clase8Page extends StatefulWidget {
  const Clase8Page({super.key});

  @override
  State<Clase8Page> createState() => _Clase8PageState();
}

class _Clase8PageState extends State<Clase8Page> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AmigosPage(),
    Text('data3'),
    BandejaPage(),
    Text('data5'),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Amigos'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.tiktok,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Bandeja de entrada'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          ]),
    );
  }
}

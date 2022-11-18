import 'package:app_sesion4/sesion8/screen/amigosPage.dart';
import 'package:app_sesion4/sesion8/screen/bandejaPage.dart';
import 'package:app_sesion4/sesion8/screen/homepage.dart';
import 'package:app_sesion4/sesion8/screen/hometareapage.dart';
import 'package:flutter/material.dart';

class Clase8Tarea extends StatefulWidget {
  const Clase8Tarea({super.key});

  @override
  State<Clase8Tarea> createState() => _Clase8TareaState();
}

class _Clase8TareaState extends State<Clase8Tarea> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeTareaPage(),
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
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.storefront_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ''),
          ]),
    );
  }
}

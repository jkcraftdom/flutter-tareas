import 'package:flutter/material.dart';

import 'menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
/*       theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ), */
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black),
      home: const MenuWidget(),
    );
  }
}

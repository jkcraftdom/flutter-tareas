import 'package:f_sesion10/pages/page1.dart';
import 'package:f_sesion10/pages/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      routes: {
        '/page1': (_) => const Page1(),
        '/page2': (_) => const Page2(),
      },
      initialRoute: '/page1',
    );
  }
}

import 'package:demo/page/home_page.dart';
import 'package:demo/provider/change_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  //
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ChangeProvider(),
      )
    ],
    child: const MyApp(),
  ));
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
      home: const HomePage(),
    );
  }
}

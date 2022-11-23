import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safeperfil/preferences/preferences.dart';
import 'package:safeperfil/providers/login_provider.dart';
import 'package:safeperfil/providers/theme_provider.dart';
import 'package:safeperfil/routes/route.dart';
import 'screen/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkMode: Preferences.theme)),
      ChangeNotifierProvider(
        create: (_) => LoginProvider(),
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
      theme: Provider.of<ThemeProvider>(context).currentTheme,
/*       theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ), */
      onGenerateRoute: MyRoutes.generateRoute,
      initialRoute: MyRoutes.rLogin,
    );
  }
}

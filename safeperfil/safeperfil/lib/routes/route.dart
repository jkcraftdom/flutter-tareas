import 'package:flutter/material.dart';
import 'package:safeperfil/screen/index.dart';

class MyRoutes {
  static const String rHome = '/home';
  static const String rAjuste = '/ajuste';
  static const String rPerfil = '/perfil';
  static const String rLogin = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ('/home'):
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case ('/ajuste'):
        return MaterialPageRoute(builder: (_) => const ConfigScreen());
      case ('/perfil'):
        return MaterialPageRoute(builder: (_) => const MiPerfilScreen());
      case ('/login'):
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}

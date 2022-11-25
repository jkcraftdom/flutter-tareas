import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safeperfil/routes/route.dart';
import 'package:safeperfil/services/service_auth.dart';
import 'package:safeperfil/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                authService.logout();
                Navigator.pushReplacementNamed(context, MyRoutes.rLogin);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.red,
              ))
        ],
      ),
      drawer: const CustomDrawerWidget(),
      body: const Center(
          child: Text(
        'Bienvenido',
        style: TextStyle(fontSize: 28),
      )),
    );
  }
}

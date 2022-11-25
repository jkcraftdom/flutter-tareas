import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safeperfil/routes/route.dart';
import 'package:safeperfil/screen/index.dart';
import 'package:safeperfil/services/service_auth.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2022/11/14/06/56/maple-7590861_960_720.jpg'))),
              child: Center(
                child: Text(
                  'Hola Mundo',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.rHome);
/*               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  )); */
            },
          ),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuration'),
              onTap: () {
                Navigator.pushReplacementNamed(context, MyRoutes.rAjuste);
/*               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ConfigScreen(),
                  ));
            }, */
              }),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Mi Perfil'),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.rPerfil);
/*               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MiPerfilScreen(),
                  )); */
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar sesion'),
            onTap: () {
              authService.logout();
              Navigator.pushReplacementNamed(context, MyRoutes.rVerify);
            },
          ),
        ],
      ),
    );
  }
}

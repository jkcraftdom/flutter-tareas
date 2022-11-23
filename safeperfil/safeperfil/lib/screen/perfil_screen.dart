import 'package:flutter/material.dart';
import 'package:safeperfil/preferences/preferences.dart';
import 'package:safeperfil/widgets/index.dart';

class MiPerfilScreen extends StatelessWidget {
  const MiPerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        centerTitle: true,
      ),
      drawer: const CustomDrawerWidget(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (Preferences.img == '')
                    ? const CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.photo,
                          size: 50,
                        ),
                      )
                    : CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(Preferences.img),
                      ),
                Text(
                  '${Preferences.nombre} ${Preferences.apellido}',
                  style: TextStyle(fontSize: 18),
                ),
                const Text(
                  'Junior Developer',
                  style: TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ciudad: ${Preferences.ciudad}',
                        style: TextStyle(fontSize: 15),
                      ),
                      const VerticalDivider(),
                      Text(
                        'Pais: ${Preferences.pais}',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.person,
                  size: 28,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Genero'),
                      (Preferences.genero != 1)
                          ? const Text('Femenino')
                          : const Text(
                              'Masculino',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

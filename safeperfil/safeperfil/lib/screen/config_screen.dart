import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safeperfil/preferences/preferences.dart';
import 'package:safeperfil/providers/theme_provider.dart';
import 'package:safeperfil/widgets/index.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  final imgController = TextEditingController(text: Preferences.img);
  final nombreController = TextEditingController(text: Preferences.nombre);
  final apellidoController = TextEditingController(text: Preferences.apellido);
  final ciudadController = TextEditingController(text: Preferences.ciudad);
  final paisController = TextEditingController(text: Preferences.pais);

  void guardar() {
    Preferences.img = imgController.text;
    Preferences.nombre = nombreController.text;
    Preferences.apellido = apellidoController.text;
    Preferences.ciudad = ciudadController.text;
    Preferences.pais = paisController.text;
    print('ER ${imgController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configución'),
        centerTitle: true,
        actions: [
          Switch.adaptive(
              value: Preferences.theme,
              onChanged: ((value) {
                Preferences.theme = value;
                final themeP =
                    Provider.of<ThemeProvider>(context, listen: false);
                value ? themeP.setClaro() : themeP.setOscuro();
                setState(() {});
              }))
        ],
      ),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFieldWidget(
                  keyboardType: TextInputType.text,
                  hintText: 'Imagen',
                  prefixIcon: const Icon(
                    Icons.photo,
                    color: Colors.grey,
                  ),
                  controller: imgController,
                ),
                CustomTextFieldWidget(
                  controller: nombreController,
                  keyboardType: TextInputType.text,
                  hintText: 'Nombre',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                CustomTextFieldWidget(
                  controller: apellidoController,
                  keyboardType: TextInputType.text,
                  hintText: 'Apellido',
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                CustomTextFieldWidget(
                  controller: ciudadController,
                  keyboardType: TextInputType.text,
                  hintText: 'Ciudad',
                  prefixIcon: const Icon(
                    Icons.location_city,
                    color: Colors.grey,
                  ),
                ),
                CustomTextFieldWidget(
                  controller: paisController,
                  keyboardType: TextInputType.text,
                  hintText: 'Pais',
                  prefixIcon: const Icon(
                    Icons.location_city,
                    color: Colors.grey,
                  ),
                ),
                RadioListTile(
                    activeColor: Colors.green,
                    value: 1,
                    groupValue: Preferences.genero,
                    title: const Text('Masculino'),
                    onChanged: (value) {
                      Preferences.genero = value ?? 1;
                      setState(() {});
                    }),
                RadioListTile(
                    activeColor: Colors.green,
                    value: 2,
                    groupValue: Preferences.genero,
                    title: const Text('Femenino'),
                    onChanged: (value) {
                      Preferences.genero = value ?? 2;
                      setState(() {});
                    }),
                MaterialButton(
                    onPressed: () => guardar(),
                    color: Colors.green,
                    child: const Text('Guardar'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

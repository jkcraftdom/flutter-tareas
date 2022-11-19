import 'package:flutter/material.dart';
import 'package:safeperfil/preferences/preferences.dart';
import 'package:safeperfil/widgets/index.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configucion'),
        centerTitle: true,
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
                  initialValue: Preferences.img,
                  keyboardType: TextInputType.text,
                  hintText: 'Imagen',
                  prefixIcon: const Icon(Icons.photo),
                  onChange: (value) {
                    Preferences.img = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.nombre,
                  keyboardType: TextInputType.text,
                  hintText: 'Nombre',
                  prefixIcon: const Icon(Icons.person),
                  onChange: (value) {
                    Preferences.nombre = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.apellido,
                  keyboardType: TextInputType.text,
                  hintText: 'Apellido',
                  prefixIcon: const Icon(Icons.person),
                  onChange: (value) {
                    Preferences.apellido = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.ciudad,
                  keyboardType: TextInputType.text,
                  hintText: 'Ciudad',
                  prefixIcon: const Icon(Icons.location_city),
                  onChange: (value) {
                    Preferences.ciudad = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.pais,
                  keyboardType: TextInputType.text,
                  hintText: 'Pais',
                  prefixIcon: const Icon(Icons.location_city),
                  onChange: (value) {
                    Preferences.pais = value;
                    setState(() {});
                  },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

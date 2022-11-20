import 'package:flutter/material.dart';
import 'package:tarea_sesion9/preferences/preferences.dart';
import 'package:tarea_sesion9/widgets/index.dart';

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
        title: const Text('Configuration'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 590,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFieldWidget(
                  initialValue: Preferences.img,
                  keyboardType: TextInputType.text,
                  hintText: 'Image',
                  prefixIcon: const Icon(Icons.photo),
                  onChange: (value) {
                    Preferences.img = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.firstName,
                  keyboardType: TextInputType.text,
                  hintText: 'First Name',
                  prefixIcon: const Icon(Icons.person),
                  onChange: (value) {
                    Preferences.firstName = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.lastName,
                  keyboardType: TextInputType.text,
                  hintText: 'Last Name',
                  prefixIcon: const Icon(Icons.person),
                  onChange: (value) {
                    Preferences.lastName = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.profession,
                  keyboardType: TextInputType.text,
                  hintText: 'Profession',
                  prefixIcon: const Icon(Icons.person),
                  onChange: (value) {
                    Preferences.profession = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.city,
                  keyboardType: TextInputType.text,
                  hintText: 'City',
                  prefixIcon: const Icon(Icons.location_city),
                  onChange: (value) {
                    Preferences.city = value;
                    setState(() {});
                  },
                ),
                CustomTextFieldWidget(
                  initialValue: Preferences.country,
                  keyboardType: TextInputType.text,
                  hintText: 'Country',
                  prefixIcon: const Icon(Icons.location_city),
                  onChange: (value) {
                    Preferences.country = value;
                    setState(() {});
                  },
                ),
                RadioListTile(
                    activeColor: Colors.blue,
                    value: 1,
                    groupValue: Preferences.gender,
                    title: const Text('Male'),
                    onChanged: (value) {
                      Preferences.gender = value ?? 1;
                      setState(() {});
                    }),
                RadioListTile(
                    activeColor: Colors.blue,
                    value: 2,
                    groupValue: Preferences.gender,
                    title: const Text('Female'),
                    onChanged: (value) {
                      Preferences.gender = value ?? 2;
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

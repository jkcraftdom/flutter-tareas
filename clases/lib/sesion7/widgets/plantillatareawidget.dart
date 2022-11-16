import 'package:flutter/material.dart';

class PlantillaCasaWidget extends StatelessWidget {
  final String? img;
  final String? name;
  final String? ingredients;
  final Color? colorName;

  const PlantillaCasaWidget(
      {super.key,
      this.img,
      this.name,
      this.ingredients,
      this.colorName = Colors.green});

  @override
  Widget build(BuildContext context) {
    List<String> ing = ['ing1' 'ingr2'];

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Image.network(
            '$img',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            '$name',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: colorName),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Ingredientes',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 117, 115, 115)),
          ),
        ),
        Text(
          '$ingredients',
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 18, color: Color.fromARGB(255, 117, 115, 115)),
        ),
        const SizedBox(
          height: 40,
        ),
        MaterialButton(
          onPressed: () {},
          height: 60,
          color: colorName,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: const SizedBox(
            width: 130,
            child: Text(
              'Tomar',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 110,
          height: 5,
          color: colorName,
        )
      ],
    );
  }
}

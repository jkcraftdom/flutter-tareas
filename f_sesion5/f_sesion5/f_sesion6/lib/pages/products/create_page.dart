import 'package:f_sesion6/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController priceCController = TextEditingController();
  final TextEditingController priceVController = TextEditingController();
  final TextEditingController stockController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Crear Producto'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              CustomTextFormField(
                controller: nameController,
                hintText: 'Nombre del producto',
              ),
              CustomTextFormField(
                controller: categoryController,
                hintText: 'Cateogria',
              ),
              CustomTextFormField(
                controller: priceCController,
                hintText: 'Precio compra',
              ),
              CustomTextFormField(
                controller: priceVController,
                hintText: 'Precio venta',
              ),
              CustomTextFormField(
                controller: stockController,
                hintText: 'Stock',
              ),
              MaterialButton(
                minWidth: 200,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  final productProvider =
                      Provider.of<ProductProvider>(context, listen: false);

                  productProvider.insertProduct(
                      nameController.text,
                      categoryController.text,
                      double.parse(priceCController.text),
                      double.parse(priceVController.text),
                      stockController.text);
                },
                child: const Text(
                  'Guardar Producto',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;

  const CustomTextFormField(
      {super.key, this.controller, this.keyboardType, this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
// maxLength: 9,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.green),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 156, 255, 149),
// hintStyle: const TextStyle(color: Colors.red),
// suffixIcon: const Icon(Icons.check, color: Colors.cyan),
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}

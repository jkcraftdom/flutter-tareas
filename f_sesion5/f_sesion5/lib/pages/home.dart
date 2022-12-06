import 'package:f_sesion5/cubit/product/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productCubit = context.read<ProductCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              productCubit.deleteProduct();
            },
          )
        ],
      ),
      body: const BodyScaffold(),
      floatingActionButton: SizedBox(
        height: 200,
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {
                final newProduct = Product(
                    name: 'Naruto',
                    stock: 2,
                    voucher: 'boleto',
                    products: ['Oreo', 'Galleta']);

                productCubit.beginProduct(newProduct);
              },
              child: const Icon(Icons.play_arrow),
            ),
            FloatingActionButton(
              onPressed: () {
                productCubit.changeStock(10);
              },
              child: const Icon(Icons.numbers),
            ),
            FloatingActionButton(
              onPressed: () {
                productCubit.addProduct();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        switch (state.runtimeType) {
          case ProductInitial:
            return const Center(
              child: Text('No hay data'),
            );
          case ProductActive:
            return InfoProduct((state as ProductActive).product);
          default:
            return const Center(
              child: Text('Estado no encontrado'),
            );
        }
      },
    );
  }
}

class InfoProduct extends StatelessWidget {
  final Product product;

  const InfoProduct(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Column(
              children: [
                Text(
                  'Nombre ${product.name}',
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  'Comprobante ${product.voucher}',
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  'Stock ${product.stock}',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Column(
              children: [
                const Text(
                  'Productos',
                  style: TextStyle(fontSize: 20),
                ),
                ...product.products
                    .map((e) => ListTile(
                          title: Text(e),
                        ))
                    .toList()
              ],
            ),
          )
        ],
      ),
    );
  }
}

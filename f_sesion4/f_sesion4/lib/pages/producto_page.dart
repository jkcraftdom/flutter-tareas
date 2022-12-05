import 'package:f_sesion4/bloc/producto/producto_bloc.dart';
import 'package:f_sesion4/model/producto_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductoPage extends StatelessWidget {
  const ProductoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productoBloc = BlocProvider.of<ProductoBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Producto'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.delete))],
      ),
      floatingActionButton: SizedBox(
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.star_rate),
              onPressed: () {
                final newProducto = Producto(
                    nombre: 'Producto 1',
                    tpago: 'Boleta',
                    stock: 8,
                    productos: ['CocaCola']);

                productoBloc.add(ActiveProducto(newProducto));
              },
            ),
            FloatingActionButton(
              child: const Icon(Icons.numbers),
              onPressed: () {
                productoBloc.add(CambioProductoStock(20));
              },
            ),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                productoBloc.add(AgregarProducto('Oreo'));
              },
            ),
            FloatingActionButton(
              child: const Icon(Icons.delete_forever),
              onPressed: () {
                productoBloc.add(BorrarProducto());
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<ProductoBloc, ProductoState>(builder: (_, state) {
        return state.existeProducto
            ? InfoProducto(producto: state.producto!)
            : const Center(
                child: Text('No hay informacion'),
              );
      }),
    );
  }
}

class InfoProducto extends StatelessWidget {
  final Producto producto;

  const InfoProducto({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Column(
              children: [
                const Text(
                  'cliente',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title: Text('Nombre: ${producto.nombre}'),
                ),
                ListTile(
                  title: Text('C. Pago: ${producto.tpago}'),
                ),
                ListTile(
                  title: Text('Stock: ${producto.stock}'),
                )
              ],
            ),
          ),
          Container(
            color: Colors.orange,
            child: Column(children: [
              const Text(
                'Productos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ...producto.productos
                  .map((e) => ListTile(
                        title: Text(e),
                      ))
                  .toList()
            ]),
          )
        ],
      ),
    );
  }
}

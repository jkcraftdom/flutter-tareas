import 'package:f_sesion6/pages/products/update_page.dart';
import 'package:f_sesion6/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
      ),
      body: ListView.builder(
        itemCount: productData.products.length,
        itemBuilder: (context, index) {
          final data = productData.products[index];

          return ListTile(
            title: Text('${data.name} - ${data.category}'),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdatePage(
                                product: data,
                              )));
                },
                icon: const Icon(Icons.edit)),
          );
        },
      ),
    );
  }
}

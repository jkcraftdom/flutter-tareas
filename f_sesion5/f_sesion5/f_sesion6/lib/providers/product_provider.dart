import 'package:f_sesion6/models/product.dart';
import 'package:f_sesion6/services/db_product.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final dBProduct = DBProduct.instance;

  List<Product> products = [];

  void insertProduct(name, category, priceC, priceV, stock) async {
    Map<String, dynamic> row = {
      DBProduct.columnName: name,
      DBProduct.columnCategory: category,
      DBProduct.columnPriceC: priceC,
      DBProduct.columnPriceV: priceV,
      DBProduct.columnStock: stock
    };

    Product product = Product.fromMap(row);

    final id = await dBProduct.createProduct(product);
    queryAll();
    print(id);

    notifyListeners();
  }

  void queryAll() async {
    final allRows = await dBProduct.queryAllProducts();

    products.clear();

    for (var element in allRows) {
      products.add(Product.fromMap(element));
    }

    notifyListeners();
  }

  void delete(id) async {
    final item = await dBProduct.delete(id);
    print(item);
    notifyListeners();
  }

  void deleteAll() async {
    await dBProduct.deleteRowAll();
    notifyListeners();
  }

  void update(id, name, category, priceC, priceV, stock) async {
    Product product = Product(id, name, category, priceC, priceV, stock);
    final rowUpdate = await dBProduct.update(product);

    notifyListeners();
  }
}

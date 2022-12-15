import 'package:f_sesion6/services/db_product.dart';

class Product {
  int? id;
  String? name;
  String? category;
  double? priceC;
  double? priceV;
  String? stock;

  Product(
      this.id, this.name, this.category, this.priceC, this.priceV, this.stock);

  Product.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    category = map["category"];
    priceC = map["priceC"];
    priceV = map["priceV"];
    stock = map["stock"];
  }

  Map<String, dynamic> toMap() {
    return {
      DBProduct.columnId: id,
      DBProduct.columnName: name,
      DBProduct.columnCategory: category,
      DBProduct.columnPriceC: priceC,
      DBProduct.columnPriceV: priceV,
      DBProduct.columnStock: stock,
    };
  }
}

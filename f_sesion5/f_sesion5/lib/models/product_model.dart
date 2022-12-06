class Product {
  final String name;
  final int stock;
  final String voucher;
  final List<String> products;

  Product(
      {required this.name,
      required this.stock,
      required this.voucher,
      required this.products});

  Product copyWith(
          {String? name,
          String? voucher,
          int? stock,
          List<String>? products}) =>
      Product(
          name: name ?? this.name,
          stock: stock ?? this.stock,
          voucher: voucher ?? this.voucher,
          products: products ?? this.products);
}

class Producto {
  final String nombre;
  final String tpago;
  final List<String> productos;
  final int stock;

  Producto(
      {required this.nombre,
      required this.tpago,
      required this.productos,
      required this.stock});

  Producto copyWith(
          {String? nombre,
          String? tpago,
          int? stock,
          List<String>? productos}) =>
      Producto(
          nombre: nombre ?? this.nombre,
          tpago: tpago ?? this.tpago,
          productos: productos ?? this.productos,
          stock: stock ?? this.stock);
}

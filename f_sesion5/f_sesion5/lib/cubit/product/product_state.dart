part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {
  final existsProduct = false;
}

class ProductActive extends ProductState {
  final existsProduct = true;
  final Product product;

  ProductActive(this.product);
}

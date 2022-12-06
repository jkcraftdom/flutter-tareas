import 'package:bloc/bloc.dart';
import 'package:f_sesion5/models/product_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  void beginProduct(Product product) {
    emit(ProductActive(product));
  }

  void changeStock(int stock) {
    final currentState = state;

    if (currentState is ProductActive) {
      final newProduct = currentState.product.copyWith(stock: stock);

      emit(ProductActive(newProduct));
    }
  }

  void addProduct() {
    final currentState = state;

    if (currentState is ProductActive) {
      final newProducts = [
        ...currentState.product.products,
        'Producto ${currentState.product.products.length + 1}'
      ];

      final newProduct = currentState.product.copyWith(products: newProducts);

      emit(ProductActive(newProduct));
    }
  }

  void deleteProduct() {
    emit(ProductInitial());
  }
}

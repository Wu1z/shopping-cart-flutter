import 'package:mobx/mobx.dart';
import 'package:shopping_cart/model/product_model.dart';
part 'cart_store.g.dart';

class CartStore = _CartStore with _$CartStore; 

abstract class _CartStore with Store {

  @observable
  List<ProductModel> productList = [];

  @action
  addProductToCart(ProductModel product) {
    productList.add(product);
  }

  @action
  removeProductFromCart(ProductModel product) {
    productList.remove(product);
  }

  @action
  clearCart() {
    productList.clear();
  }
} 
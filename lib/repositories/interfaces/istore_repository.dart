import 'package:shopping_cart/models/product_model.dart';

abstract class IStoreRepository {
  Future<List<ProductModel>> getAll();
}
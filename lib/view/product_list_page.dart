import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping_cart/main.dart';
import 'package:shopping_cart/model/product_model.dart';
import 'package:shopping_cart/view/cart_page.dart';
import 'package:shopping_cart/widget/product_card.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Row(
          children: [
            const Icon(Icons.shopping_cart_outlined),
            Observer(
              builder: (_) {
                return Visibility(
                  visible: cartStore.productList.isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("${cartStore.productList.length}"),
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () => _goToCartPage(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50, bottom: 20),
            child: Text(
              "Products", 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductCard(
                    onPressed: _addProduct
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _goToCartPage() {
    final route = MaterialPageRoute(
      builder: (context) => const CartPage(),
    );
    Navigator.push(context, route);
  }

  _addProduct() {
    cartStore.addProductToCart(
      ProductModel("", 0.0)
    );
  }
}
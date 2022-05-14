import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Products", 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart_outlined),
        onPressed: () => _goToCartPage(),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: ProductCard(),
          );
        },
      ),
    );
  }

  _goToCartPage() {
    final route = MaterialPageRoute(
      builder: (context) => const CartPage(),
    );
    Navigator.push(context, route);
  }
}
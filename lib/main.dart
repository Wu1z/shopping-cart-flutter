import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_cart/stores/cart_store.dart';
import 'package:shopping_cart/values/theme.dart';
import 'package:shopping_cart/view/product_list_page.dart';

void main() {
  runApp(const MyApp());
}

final cartStore = CartStore();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      home: const ProductListPage(),
    );
  }
}
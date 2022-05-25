# shopping_cart

A shopping cart made in Flutter using MobX.

## Product list

The products from the list is obtained from a free api:

**https://fakestoreapi.com/**

![image](https://user-images.githubusercontent.com/40008264/170170967-349a1845-71ec-4641-b018-ca7aea764641.png)

When pressing the add button of the product card, the product is addded to the cart using MobX, and the floating action button is updated with the quantity of products.

## Cart

In the cart page all added products can be viewed.

![image](https://user-images.githubusercontent.com/40008264/170171475-5b50c460-db61-4e95-b4a1-ef279a73e9e3.png)

When pressing the clear button all the cart is cleaned and return to the list page.

## How to run

To run the project is necessary generate the .g files for MobX, to generate run the code above:

```
flutter packages pub run build_runner build
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

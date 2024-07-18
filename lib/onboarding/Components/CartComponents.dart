import 'package:flutter/cupertino.dart';

class CartComponents extends StatefulWidget {
  const CartComponents({super.key});

  @override
  State<CartComponents> createState() => _CartComponentsState();
}

class _CartComponentsState extends State<CartComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Cart Page"),
    );
  }
}

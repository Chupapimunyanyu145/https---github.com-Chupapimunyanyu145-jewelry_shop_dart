// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/shopping_cart/shopping_cart_page.dart';

class AppBarBagIcon extends StatelessWidget {
  const AppBarBagIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: IconButton(
        iconSize: 35,
        icon: Icon(Icons.shopping_bag_outlined),
        onPressed: () {
          Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) =>  ShoppingCartPage())
          );
        },
      ),
    );
  }
}

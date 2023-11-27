// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/shop_item.dart';
import 'package:jewelry_shop_dart/pages/shopping_cart/widgets/shopping_list.dart';
import 'package:jewelry_shop_dart/pages/shopping_cart/widgets/shopping_list_price.dart';

class ShoppingCartBody extends StatelessWidget {
  final List<ShopItem> shopItems;
  
  const ShoppingCartBody({
    super.key,
    required this.shopItems
  });

  @override
  Widget build(BuildContext context) {
    int shopItemsPrice = 0;
    for (var item in shopItems) {
      shopItemsPrice += item.item.price;
    }

    return Flexible(
      child: Column(
        children: [
          ShoppingList(shopItems: shopItems),
          ShoppingListPrice(shopItemsPrice: shopItemsPrice),
        ],
      ),
    );
  }
}

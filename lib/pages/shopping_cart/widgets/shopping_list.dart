// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/shop_item.dart';
import 'package:jewelry_shop_dart/pages/shopping_cart/widgets/shop_list_item_widget.dart';

class ShoppingList extends StatelessWidget {
  final List<ShopItem> shopItems;
  
  const ShoppingList({
    super.key, 
    required this.shopItems,
  });

  @override
  Widget build(BuildContext context) {
    
    return Flexible(
      child: ListView(
        children: shopItems
            .map((e) => ShopListItemWidget(shopItem: e)).toList(),
      ),
    );
  }
}


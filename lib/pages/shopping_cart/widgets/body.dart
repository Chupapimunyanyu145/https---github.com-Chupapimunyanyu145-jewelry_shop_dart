// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/models/shop_item.dart';
import 'package:jewelry_shop_dart/pages/shopping_cart/widgets/shopping_cart_empty.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';
import 'shopping_cart_body.dart';
import 'shopping_cart_header.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ShopItem> shopItems = context.watch<AppStateCubit>().shopItems;

    return SafeArea(
      child: Column(
        children: [
          ShoppingCartHeader(),
          shopItems.isEmpty 
          ? ShoppingCartEmpty()
          :ShoppingCartBody(shopItems: shopItems),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class ShoppingCartHeader extends StatelessWidget {
  const ShoppingCartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: .5,
              color: AppColors.gray2
            )
          )
        ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
          children: [
            Text(
              'Корзина',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32
              ),
            ),
          ],
        ),
    );
  }
}
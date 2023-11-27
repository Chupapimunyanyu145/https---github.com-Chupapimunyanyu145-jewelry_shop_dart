// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/home/widgets/new_products.dart';
import 'package:jewelry_shop_dart/widgets/vertical_list/widgets/best_sellers.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
            children: [
              NewProducts(),
              SizedBox(height: 20),
              BestSellers(),
            ],
      ),
    );
  }
}
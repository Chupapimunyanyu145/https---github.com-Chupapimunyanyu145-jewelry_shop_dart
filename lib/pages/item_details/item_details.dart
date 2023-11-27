// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';
import 'package:jewelry_shop_dart/widgets/app_bar_bag_icon.dart';
import 'package:jewelry_shop_dart/widgets/app_bar_favorite_icon.dart';

import 'widgets/body.dart';

class ItemDetailsPage extends StatelessWidget {
  final Item item;

  const ItemDetailsPage({
    super.key, 
    required this.item
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: buildAppBar(context),
      body: Body(item: item),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        item.category.localizedTitlePlural,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 26
        ),
      ),
      actions: [
        AppBarBagIcon(),
        AppBarFavoriteIcon(),
      ],
    );
  }
}

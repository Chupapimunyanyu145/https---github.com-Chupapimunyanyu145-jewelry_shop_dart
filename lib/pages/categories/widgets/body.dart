// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/data/data.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/enums/category.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class Body extends StatelessWidget {
  const Body({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: categories
                .map((e) => CategoryWidget(
                  category: e['Категория'] as Category,
                  itemsCount: e['предложений'] as int,
                ))
              .toList());
  }
}

class CategoryWidget extends StatelessWidget {
  final Category category;
  final int itemsCount;

  const CategoryWidget({
    super.key, 
    required this.category, 
    required this.itemsCount
  });

  @override
  Widget build(BuildContext context) {
    List<Item> items = context
      .read<AppStateCubit>()
      .items
      .where((i) => i.category == category)
      .toList();

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15).copyWith(right: 15),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color:  AppColors.gray4)),
        ),
        child: Row(
          children: [
            buildImage(items.first),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNameLabel(),
                SizedBox(height: 5),
                buildItemsCountLabel(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage(Item item)  {
    return Image.network(
      item.image,
      height: 110,
    );
  }

  Widget buildNameLabel() {
    return Text(
            category.localizedTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          );
  }

  Widget buildItemsCountLabel() {
    return Text(
            '$itemsCount предложений',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18
            ),
          );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, avoid_print

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/widgets/horizontal_list/widgets/horizontal_list_item.dart';

class HorizontalListBody extends StatelessWidget {
  final List<Item> items;

  const HorizontalListBody({
    super.key, required this.items,
  });

  @override
  Widget build(BuildContext context) {
    List<Item> preItems = items.take(7).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: 
          preItems.map((item) => HorizontalListItem(item: item,)).toList()
      ),
    );
  }
}




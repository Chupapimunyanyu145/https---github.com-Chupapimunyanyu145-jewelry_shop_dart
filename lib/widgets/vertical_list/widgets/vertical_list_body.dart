// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/widgets/vertical_list/widgets/vertical_list_item.dart';

class VerticalListBody extends StatelessWidget {
  final List<Item> items;
  const VerticalListBody({
    super.key, 
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((i) => VerticalListItem(item:i)).toList(),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, avoid_print

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/widgets/horizontal_list/widgets/horizontal_list_body.dart';
import 'package:jewelry_shop_dart/widgets/horizontal_list/widgets/list_header.dart';

class HorizontalList extends StatelessWidget {
  final List<Item> items;

  const HorizontalList({
    super.key, 
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          NewProductsHeader(title: 'Специально для вас'),
          SizedBox(height: 15),
          HorizontalListBody(items: items),
        ],
      ),
    );
  }
}

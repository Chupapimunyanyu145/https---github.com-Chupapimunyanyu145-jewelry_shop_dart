// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/widgets/horizontal_list/widgets/list_header.dart';
import 'package:jewelry_shop_dart/widgets/vertical_list/widgets/vertical_list_body.dart';

class VerticalList extends StatelessWidget {
  final List<Item> items;

  const VerticalList({
    super.key, 
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    List<Item> preItems = items.take(8).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          NewProductsHeader(title: 'Самые продаваемые',),
          VerticalListBody(items: preItems),
        ],
      ),
    );
  }
}
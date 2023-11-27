// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/enums/category.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';
import 'package:jewelry_shop_dart/widgets/vertical_list/vertical_list.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> items = context
      .watch<AppStateCubit>()
      .items
      .where((i) => [Category.chain, Category.pendant, Category.crossPendant].contains(i.category))
      .toList();

    return VerticalList(items: items);
  }
}
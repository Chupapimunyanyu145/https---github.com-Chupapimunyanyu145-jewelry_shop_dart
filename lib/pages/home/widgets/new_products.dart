// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/enums/category.dart';
import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';
import 'package:jewelry_shop_dart/widgets/horizontal_list/horizontal_list_header.dart';

class NewProducts extends StatelessWidget {
  const NewProducts({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    List<Item> items = context
      .watch<AppStateCubit>()
      .items
      .where((i) => [Category.ring, Category.earring].contains(i.category))
      .toList();
    return HorizontalList(
      items: items,
    );
  }
}


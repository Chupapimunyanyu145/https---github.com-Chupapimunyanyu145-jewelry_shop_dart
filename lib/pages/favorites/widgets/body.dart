// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/pages/favorites/widgets/favorite_item.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> items = context.watch<AppStateCubit>().favoriteItems;

    return GridView.builder(
      padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16 
          ), 
          itemCount: items.length,
          itemBuilder: (_, index){
            return FavoriteItem(item: items[index]);
          },
        );
  }
}
// ignore_for_file: unrelated_type_equality_checks, prefer_const_constructors, avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/data/data.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/models/shop_item.dart';

part 'app_state_state.dart';

class AppStateCubit extends Cubit<AppStateState> {
  AppStateCubit() : super(AppStateState.initial());

  List<Item> get items => state.items;
  
  List<Item> itemsByCategory(Category category) =>
    items.where((item) => item.category == category).toList();
  List<Item> get favoriteItems =>
    items.where((item) => item.isFavorite).toList();
  List<ShopItem> get shopItems => state.shopItems;

  void updateFavorites(BuildContext context, Item item) {
    int index = items.indexWhere((e) => e.id == item.id);
    List<Item> updateItems = List.of(items)..[index] = item;
    emit(state.copyWith(items: updateItems));


    SnackBar snackBar = SnackBar(
      content: Text(
        item.isFavorite
          ? '${item.name} добавлено в избранное'
          : '${item.name} удалено из избранного'
      ),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void addItem(BuildContext context, Item item) {
    List<ShopItem> shopItemsCopy = List.of(shopItems);
    int index = shopItemsCopy.indexWhere((e) => e.item.id == item.id);

    if (index == -1) {
      shopItemsCopy.add(ShopItem(item: item));
    } else {
      shopItemsCopy[index] = ShopItem(
        item: shopItemsCopy[index].item
      );
    }

    emit(state.copyWith(shopItems: shopItemsCopy));

    SnackBar snackBar = SnackBar(
      content: Text('Добавлено в корзину'),
      duration: Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void removeItem(Item item) {
  List<ShopItem> shopItemsCopy = shopItems.toList();
  int index = shopItemsCopy.indexWhere((e) => e.item.id == item.id);

  if (index == 0) {
    shopItemsCopy.removeAt(index);
  } else {
    shopItemsCopy[index] = shopItemsCopy[index].copyWith(); 
  }

  emit(state.copyWith(shopItems: shopItemsCopy));
}
}
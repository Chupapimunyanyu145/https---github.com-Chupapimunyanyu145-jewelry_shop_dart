import 'package:jewelry_shop_dart/models/item.dart';

class ShopItem {
  final Item item;

  ShopItem({
    required this.item
  });

  ShopItem copyWith({
    Item? item
  }) {
    return ShopItem(
      item: item ?? this.item
    );
  }
}
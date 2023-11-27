// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/pages/item_details/item_details.dart';

class HorizontalListItem extends StatefulWidget {
  final Item item;

  const HorizontalListItem({
    super.key, 
    required this.item
  });

  @override
  State<HorizontalListItem> createState() => _HorizontalListItemState();
}

class _HorizontalListItemState extends State<HorizontalListItem> {
  double size = 180;
  Item get item => widget.item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ItemDetailsPage(item: item)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SizedBox(
          width: size,
          child: Column(
            children: [
              buildImageContainer(),
              SizedBox(height: 8),
              buildNameLabel(),
              SizedBox(height: 5),
              buildPriceLabel()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageContainer() {
    return Stack(
      children: [buildImage(), buildFavoriteIcon()],
    );
  }

  Widget buildImage() {
    return Image.network(
      item.image,
      width: size,  
    );
  }

  Widget buildFavoriteIcon() {
    return Positioned(
      top: 5,
      right: 5,
      child: 
        Icon(
          item.isFavorite
            ? Icons.favorite
            : Icons.favorite_border,
        size: 25,
      )
    );
  }

  Widget buildNameLabel() {
    return Text(
              item.name,
              style: TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.bold,
                ),
              maxLines: 1,
            );
  }

  Widget buildPriceLabel() {
    return Text(
              '${item.price}p',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            );
  }
}

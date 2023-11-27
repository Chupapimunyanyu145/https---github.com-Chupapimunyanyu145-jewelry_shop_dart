// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/pages/item_details/item_details.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class FavoriteItem extends StatelessWidget {
  final Item item;

  const FavoriteItem({
    super.key, 
    required this.item
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ItemDetailsPage(item: item)),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildImageContainer(),
          buildNameLabel(),
          buildPriceLabel()
        ]
      ),
    );
  }

  Widget buildImageContainer() {
    return Stack(
        children: [
          buildImage(),
          buildFavoriteIcon()
        ],
      );
  }

  Positioned buildFavoriteIcon() {
    return Positioned(
          top: 5,
          right: 5,
          child: Icon(Icons.favorite,
          size: 25),
        );
  }

  Widget buildImage() {
    double size = 180;
    return Image.network(
      item.image,
      height: size,
      width: size,
    );
  }

  Widget buildNameLabel() {
    return Text(
          item.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            overflow: TextOverflow.ellipsis
          ),
          maxLines: 1,
        );
  }

  Widget buildPriceLabel() {
    return Text(
          '${item.price}p',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.gray1,
            fontSize: 20,
          ),
          maxLines: 1,
        );
  }
}
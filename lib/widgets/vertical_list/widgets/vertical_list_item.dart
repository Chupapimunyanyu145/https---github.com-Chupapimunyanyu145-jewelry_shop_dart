// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/pages/item_details/item_details.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class VerticalListItem extends StatelessWidget {
  final Item item;
  
  const VerticalListItem({
    super.key, 
    required this.item, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ItemDetailsPage(item: item)),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15).copyWith(right: 15),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color:  AppColors.gray4)),
        ),
        child: Row(
          children: [
            buildImage(),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildNameLabel(),
                SizedBox(height: 5),
                buildPriceLabel(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage()  {
    return Image.network(
      item.image,
      height: 110,
    );
  }

  Widget buildNameLabel() {
    return Text(
            item.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          );
  }

  Widget buildPriceLabel() {
    return Text(
            '${item.price}p',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18
            ),
          );
  }
}
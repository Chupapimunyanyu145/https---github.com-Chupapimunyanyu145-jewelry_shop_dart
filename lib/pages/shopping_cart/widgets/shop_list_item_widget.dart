// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/models/shop_item.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class ShopListItemWidget extends StatefulWidget {
  final ShopItem shopItem;
  
  const ShopListItemWidget({
    super.key, 
    required this.shopItem
  });

  @override
  State<ShopListItemWidget> createState() => _ShopListItemWidgetState();
}

class _ShopListItemWidgetState extends State<ShopListItemWidget> {
  Item get item => widget.shopItem.item;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          buildImage(),
          SizedBox(width: 20),
          Flexible(
            child: Container(
             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
             decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: .5,
                  color: AppColors.gray2
                )
              )
             ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildNameLabel(),
                  SizedBox(height: 5),
                  buildModel(),
                  SizedBox(height: 7),
                  buildPrice(),
                ],
              ),
            ),
          )
        ],
      );
  }

  Row buildModel() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(
                  'Модель:',
                  style: TextStyle(
                    color: AppColors.gray1,
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  item.specifications.model,
                  style: TextStyle(
                    color: AppColors.gray1,
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ),
                ),
              ],
            );
  }

  Row buildPrice() {
    return Row(
      children: [
        Text('${item.price}p',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
        buildDeleteButton(
          onTap: () => context.read<AppStateCubit>().removeItem(item)
        ),
      ],
    );
  }

  Widget buildDeleteButton({
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.delete,
            size: 32,
            color: Colors.red.shade900,
          ),
        ),
      ),
    );
  }

  Widget buildNameLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
            item.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),
          ),
      ],
    );
  }

  Widget buildImage() {
    return Image.network(
      item.image,
      height: 150,
    );
  }
}

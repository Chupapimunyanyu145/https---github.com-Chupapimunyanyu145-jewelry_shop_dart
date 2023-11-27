// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';
import 'package:jewelry_shop_dart/widgets/custom_button.dart';

class ShoppingListPrice extends StatefulWidget {
  final int shopItemsPrice;
  const ShoppingListPrice({
    super.key, 
    required  this.shopItemsPrice,
  });

  @override
  State<ShoppingListPrice> createState() => _ShoppingListPriceState();
}

class _ShoppingListPriceState extends State<ShoppingListPrice> {
  double shippingCost = 1450.99;
  double get total => shippingCost +widget.shopItemsPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          buildShippingCost(),
          SizedBox(height: 5),
          buildItemsCost(),
          SizedBox(height: 5),
          buildTotal(),
          SizedBox(height: 15),
          buildConfirmButton()
        ],
      ),
    );
  }

  Widget buildConfirmButton() {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        title: 'К офрмлению', 
        onPressed: () {}
      ),
    );
  }
  Widget buildShippingCost() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Стоимость доставки',
               style: TextStyle(
                color: AppColors.dark.withOpacity(.5),
                fontWeight: FontWeight.w400,
                fontSize: 20
               ),
            ),
            Text(
              '$shippingCost p',
              style: TextStyle(
                color: AppColors.dark.withOpacity(.5),
                fontWeight: FontWeight.w400,
                fontSize: 20
              ),
            ),
          ],
        );
  }

   Widget buildItemsCost() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Стоимость товаров',
               style: TextStyle(
                color: AppColors.dark.withOpacity(.5),
                fontWeight: FontWeight.w400,
                fontSize: 20
               ),
            ),
            Text(
              '${widget.shopItemsPrice} p',
              style: TextStyle(
                color: AppColors.dark.withOpacity(.5),
                fontWeight: FontWeight.w400,
                fontSize: 20
              ),
            ),
          ],
        );
  }

  Widget buildTotal() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Всего',
               style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.bold,
                fontSize: 20
               ),
            ),
            Text(
              '$total p',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ],
        );
  }
}

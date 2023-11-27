// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/home/home_page.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';
import 'package:jewelry_shop_dart/widgets/custom_button.dart';

class ShoppingCartEmpty extends StatelessWidget {
  const ShoppingCartEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildImage(),
            SizedBox(height: 30),
            buildCartLabel(),
            SizedBox(height: 30),
            buildGoShoppingButton(context)
          ],
        ),
      ),
    );
  }

  Text buildCartLabel() {
    return Text(
          'Ваша корзина пуста',
          style: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        );
  }

  Widget buildImage() {
    return Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs0S7WfbABNFrbEmfAmeH4rjZtijYNYolAYA&usqp=CAU',
      height: 450,
    );
  }

  Widget buildGoShoppingButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        title: 'Перейти к покупкам', 
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HomePage()),
        )
      ),
    );
  }
}

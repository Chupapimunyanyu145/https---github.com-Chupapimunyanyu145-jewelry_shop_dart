// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

import 'widgets/body.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  
  AppBar buildAppBar() {
    return AppBar();
  }
}

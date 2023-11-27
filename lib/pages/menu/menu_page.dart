// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/menu/widgets/body.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: buildAppBar(),
      body: SafeArea(
        child: Body(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar();
  }
}
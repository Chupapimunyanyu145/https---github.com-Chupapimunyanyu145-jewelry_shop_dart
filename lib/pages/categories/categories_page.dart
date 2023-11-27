// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/categories/widgets/body.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Категории',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
      ),
    );
  }
}
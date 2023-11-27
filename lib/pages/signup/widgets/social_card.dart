// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class SocialCard extends StatelessWidget{
  final String image;
  final double size;

  const SocialCard({
    super.key,
    required this.image,
    this.size = 50,
  });

  @override
  Widget build (BuildContext context) {
    return Container(
      height: size,
      width: size,
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.gray4,
        shape: BoxShape.circle,
      ),
    child: Image.asset(image),
    );
  }
}
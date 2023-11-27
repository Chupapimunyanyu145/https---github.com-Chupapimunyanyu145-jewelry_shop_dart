// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class CustomButton extends StatelessWidget {
  final String title;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.dark),
        foregroundColor: MaterialStateProperty.all(AppColors.white),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
     child: Text(title),
    );
  }
}
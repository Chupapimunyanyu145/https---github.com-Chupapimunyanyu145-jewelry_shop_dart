// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/home/widgets/home_content.dart';
import 'package:jewelry_shop_dart/pages/home/widgets/home_header.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          HomeHeader(),
          SizedBox(height: 20),
          HomeContent()
        ],
      ),
    );
  }
}
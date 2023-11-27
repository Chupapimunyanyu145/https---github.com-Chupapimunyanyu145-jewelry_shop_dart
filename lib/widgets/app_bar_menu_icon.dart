// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/menu/menu_page.dart';

class AppBarMenuIcon extends StatelessWidget {
  const AppBarMenuIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: IconButton(
        iconSize: 45,
        icon: Icon(Icons.menu),
        onPressed: () {
          Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MenuPage())
          );
        },
      ),
    );
  }
}

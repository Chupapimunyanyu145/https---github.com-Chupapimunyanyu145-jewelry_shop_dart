// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../widgets/app_bar_bag_icon.dart';
import '../../../widgets/app_bar_favorite_icon.dart';
import '../../../widgets/app_bar_menu_icon.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        children: [
          AppBarMenuIcon(),
          Spacer(),
          AppBarBagIcon(),
          AppBarFavoriteIcon()
        ],
      ),
    );
  }
}

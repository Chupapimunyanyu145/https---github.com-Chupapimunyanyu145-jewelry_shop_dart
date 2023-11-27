// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/categories/categories_page.dart';
import 'package:jewelry_shop_dart/pages/home/home_page.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuOption(
          name: 'Главная страница',
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        MenuOption(
          name: 'Категории',
          onTap: () {
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const CategoriesPage())
          );
          },  
        ),
        MenuOption(
          name: 'Уведомления',
          onTap: () {
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomePage())
          );
          },
        ),
        MenuOption(
          name: 'Настройки',
          onTap: () {
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomePage())
          );
          },  
        ),
      ],
    );
  }
}

class MenuOption extends StatelessWidget {
  final String name;
  final Function() onTap;
  const MenuOption({
    super.key, 
    required this.name, 
    required this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.gray4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              // buildIcon(),
              SizedBox(width: 10),
              buildItemLabel(),
              Spacer(),
              buildArrowIcon()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIcon() {
    return Icon(
          Icons.home,
          size: 40,
          color: AppColors.gray1,
        );
  }

  Widget buildItemLabel() {
    return Text(
          '${name}',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20
          ),
        );
  }

  Widget buildArrowIcon() {
    return Icon(
          Icons.arrow_forward_ios
        );
  }
}

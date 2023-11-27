// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class SpecificationsWidget extends StatelessWidget {
  final ItemSpecifications specifications;

  const SpecificationsWidget({
    super.key, 
    required this.specifications, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSpecificationsWidget(
          label: 'Категория', 
          value: specifications.category
        ),
        buildSpecificationsWidget(
          label: 'Коллекция', 
          value: specifications.collection
        ),
        buildSpecificationsWidget(
          label: 'Модель', 
          value: specifications.model
        ),
        buildSpecificationsWidget(
          label: 'Материал', 
          value: specifications.material
        ),
        buildSpecificationsWidget(
          label: 'Вставка', 
          value: specifications.insert
        ),
        buildSpecificationsWidget(
          label: 'Страна', 
          value: specifications.country
        ),
        buildSpecificationsWidget(
          label: 'Вес(г.)', 
          value: specifications.weight
        ),
      ]
    );
  }

  Widget buildSpecificationsWidget({
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.dark.withOpacity(.5),
              fontSize: 20
              ),
            ),
        ),
        Spacer(),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.dark.withOpacity(.5),
              fontSize: 20
              ),
            ),
        ),
        ],
      );
  }
}
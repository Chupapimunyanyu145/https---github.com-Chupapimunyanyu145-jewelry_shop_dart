// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class NewProductsHeader extends StatelessWidget {
  final String title;

  const NewProductsHeader({
    super.key,
    required this.title, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black38,
              fontSize: 21,
              fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

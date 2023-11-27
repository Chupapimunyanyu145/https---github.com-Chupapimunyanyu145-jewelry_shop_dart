// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'menu_header.dart';
import 'menu_options.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuHeader(),
        SizedBox(height: 40),
        MenuOptions()
      ],
    );
  }
}

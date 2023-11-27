// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildTitleLabel(),
      ],
    );
  }

  Widget buildTitleLabel() {
    return Flexible(
      child: Text(
        'Восстановление пароля',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32
        ),
      ),
    );
  }
}
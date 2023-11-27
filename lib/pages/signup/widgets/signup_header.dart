// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print,, no_leading_underscores_for_local_identifiers 

import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
          'Регистрация',
           style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold
      )
    );
  }
}
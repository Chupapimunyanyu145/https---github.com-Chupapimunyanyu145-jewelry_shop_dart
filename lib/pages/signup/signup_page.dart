// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, 

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/signup/widgets/body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Body(),
      ),
    );
  }
}



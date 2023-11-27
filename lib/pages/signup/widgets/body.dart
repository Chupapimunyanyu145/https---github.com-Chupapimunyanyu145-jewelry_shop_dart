// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print,, avoid_unnecessary_containers 

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/signup/widgets/signup_form.dart';
import 'package:jewelry_shop_dart/pages/signup/widgets/signup_header.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SignUpHeader(),
            SignUpForm(),
         ],
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, avoid_print, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/login/widgets/login_form.dart';
import 'package:jewelry_shop_dart/pages/login/widgets/login_header.dart';

class Body extends StatefulWidget {
  const Body ({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                LogInHeader(),
                SizedBox(height: 100),
                LogInForm(),
              ],
        ),
       ),
   );
  }
}


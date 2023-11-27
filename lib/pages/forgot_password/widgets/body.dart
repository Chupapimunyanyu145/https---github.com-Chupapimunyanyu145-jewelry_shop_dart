// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/forgot_password/widgets/forgot_password_form.dart';
import 'package:jewelry_shop_dart/pages/forgot_password/widgets/header.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold( body: buildBody());
  }

  Widget buildBody() {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Header(),
            SizedBox(height: 20),
            ForgotPasswordForm(),
            ]
          ),
      ),
    );
  }
}
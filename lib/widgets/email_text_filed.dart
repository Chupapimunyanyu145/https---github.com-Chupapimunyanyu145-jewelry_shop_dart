// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print,, no_leading_underscores_for_local_identifiers 

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/utils/utils.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController emailController;
  final Function(String?) onSaved;

  const EmailTextField({
    super.key,
     required this.emailController,
     required this.onSaved,
     });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
        onSaved: onSaved,
      decoration: InputDecoration(
        hintText: 'Почта',
        labelStyle: TextStyle(fontSize: 18),
      ),
      validator: (value) {
        if (value == null || value.isEmpty){
          return 'Пожалуйста введите почту';
        } else if(!Utils.isEmailValid(value)) {
          return 'Ваш адрес электронной не действителен';
        }

        return null;
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
}
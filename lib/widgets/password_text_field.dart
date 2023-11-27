// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/utils/constants.dart';
import 'package:jewelry_shop_dart/utils/utils.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController passwordController;
  final String labelText;
  final Function(String?)? validator;
  final Function(String?)? onChanged;
  final Function(String?)? onSaved;

  const PasswordTextField({
    super.key,
    required this.passwordController,
    required this.labelText,
    this.validator,
    this.onChanged,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
        onSaved: onSaved,
        onChanged: onChanged,
      decoration: InputDecoration(
        hintText: labelText,
        labelStyle: TextStyle(fontSize: 18),
      ),
      validator: _validatorDecorator,
      obscureText: true,
    );
  }

  String? _validatorDecorator(String? value) {
    if (validator != null) {
      String? v = _validator(value);

      return v ?? validator!(v);
    }

    return _validator(value);
  }

  String? _validator(value) {
      if (value == null || value.isEmpty){
        return 'Пожалуйста введите пароль';
      } else if(!Utils.passwordMinSize(value, 
        minSize: Constants.minPasswordSize)) {
          return 'Ваш пароль должен быть не менее ${Constants.minPasswordSize} символов';
        }
      return null;
    }
}